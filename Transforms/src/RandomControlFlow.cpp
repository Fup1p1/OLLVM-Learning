#include "llvm/IR/Function.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Transforms/Utils/ValueMapper.h"
#include "llvm/Transforms/Utils/Cloning.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Instructions.h"
#include "SplitBasicBlock.h"
#include "llvm/IR/IRBuilder.h"
#include "Utils.h"
#include <vector>
#include <cstdlib>
#include <ctime> 
#include "llvm/IR/Intrinsics.h"
#include "llvm/IR/IntrinsicsX86.h"
#include "RandomControlFlow.h"
using namespace llvm;
using std::vector;
static cl::opt<int>obfuTimes("rcf_loop",cl::init(1),cl::desc("Obfuscate a function <bef_loop>time(s)."));
namespace{
    class RandomControlFlow: public FunctionPass{
        public:
            static char ID;
            RandomControlFlow():FunctionPass(ID){
                srand(time(NULL));
            }
            Value* alterVal(Value *origVar,BasicBlock *insertAfter);
            bool runOnFunction(Function &F);
            void insertRandomBranch(Value *randVar,BasicBlock *ifTrue,BasicBlock *ifFalse,BasicBlock *insertAfter);
            bool randcf(BasicBlock *entryBB);
    };
}
bool RandomControlFlow::runOnFunction(Function &F){
    INIT_CONTEXT(F);
    FunctionPass *pass=createSplitBasicBlockPass();
    pass->runOnFunction(F);
    for(int i=0;i<obfuTimes;i++){
        vector<BasicBlock*>origBB;
        for(BasicBlock &BB:F){
            origBB.push_back(&BB);
        }
        for(BasicBlock *BB:origBB){
            randcf(BB);
        }
    }
    return true;
}
//以基本块为单位进行随机控制流混淆
bool RandomControlFlow::randcf(BasicBlock *entryBB){
    //第一步 将基本块拆分
    BasicBlock *bodyBB=entryBB->splitBasicBlock(entryBB->getFirstNonPHI(),"entryBB");
    BasicBlock *endBB=bodyBB->splitBasicBlock(bodyBB->getTerminator(),"endBB");

    //第二步,对基本块进行克隆,并且修复逃逸变量
    BasicBlock *cloneBB=createCloneBasicBlock(bodyBB);

    //第三步,构建随机跳转
    *entryBB->getTerminator()->eraseFromParent();
    Function *randfunc=Intrinsic::getDeclaration(entryBB->getModule(),llvm::Intrinsic::x86_rdrand_32);      //获取32位随机数
    CallInst *callinst=CallInst::Create(randfunc->getFunctionType(),randfunc,"",entryBB);
    Value *randVar=ExtractValueInst::Create(callinst,0,"",entryBB);//将生成的随机数插入到 entryBB的尾部
    insertRandomBranch(randVar,bodyBB,cloneBB,entryBB);

    //第四步 bodyBB和cloneBB添加随机跳转

    bodyBB->getTerminator()->eraseFromParent();
    cloneBB->getTerminator()->eraseFromParent();
    insertRandomBranch(randVar,bodyBB,endBB,cloneBB);
    insertRandomBranch(randVar,endBB,cloneBB,bodyBB);


    
}
//插入随机跳转，随机数为randvar
//如果 randvar %2==1 就跳转到ifTrue  ，否则跳转到ifFalse;
void RandomControlFlow::insertRandomBranch(Value *randVar,BasicBlock *ifTrue,BasicBlock *ifFalse,BasicBlock *insertAfter){
    Value *alteredRandVar=alterVal(randVar,insertAfter);
    Value *randMod2=BinaryOperator::CreateURem(alteredRandVar,CONST_I32(2),"",insertAfter);
    CmpInst *cmp1=new ICmpInst(*insertAfter,ICmpInst::ICMP_EQ,randMod2,CONST_I32(0),"");
    BranchInst *branch=BranchInst::Create(ifTrue,ifFalse,cmp1,insertAfter);

}
//对变量进行恒等变换
Value* RandomControlFlow::alterVal(Value *startVar,BasicBlock *insertAfter){
    uint32_t code = rand() % 3;
  Value *result;
  if (code == 0) {
    // x = x * (x + 1) - x^2
    BinaryOperator *op1 = BinaryOperator::Create(Instruction::Add, startVar,
                                                 CONST_I32(1), "", insertAfter);
    BinaryOperator *op2 = BinaryOperator::Create(Instruction::Mul, startVar,
                                                 op1, "", insertAfter);
    BinaryOperator *op3 = BinaryOperator::Create(Instruction::Mul, startVar,
                                                 startVar, "", insertAfter);
    BinaryOperator *op4 =
        BinaryOperator::Create(Instruction::Sub, op2, op3, "", insertAfter);
    result = op4;
  } else if (code == 1) {
    // x = 3 * x * (x - 2) - 3 * x^2 + 7 * x
    BinaryOperator *op1 = BinaryOperator::Create(Instruction::Mul, startVar,
                                                 CONST_I32(3), "", insertAfter);
    BinaryOperator *op2 = BinaryOperator::Create(Instruction::Sub, startVar,
                                                 CONST_I32(2), "", insertAfter);
    BinaryOperator *op3 =
        BinaryOperator::Create(Instruction::Mul, op1, op2, "", insertAfter);
    BinaryOperator *op4 = BinaryOperator::Create(Instruction::Mul, startVar,
                                                 startVar, "", insertAfter);
    BinaryOperator *op5 = BinaryOperator::Create(Instruction::Mul, op4,
                                                 CONST_I32(3), "", insertAfter);
    BinaryOperator *op6 = BinaryOperator::Create(Instruction::Mul, startVar,
                                                 CONST_I32(7), "", insertAfter);
    BinaryOperator *op7 =
        BinaryOperator::Create(Instruction::Sub, op3, op5, "", insertAfter);
    BinaryOperator *op8 =
        BinaryOperator::Create(Instruction::Add, op6, op7, "", insertAfter);
    result = op8;
  } else if (code == 2) {
    // x = (x - 1) * (x + 3) - (x + 4) * (x - 3) - 9
    BinaryOperator *op1 = BinaryOperator::Create(Instruction::Sub, startVar,
                                                 CONST_I32(1), "", insertAfter);
    BinaryOperator *op2 = BinaryOperator::Create(Instruction::Add, startVar,
                                                 CONST_I32(3), "", insertAfter);
    BinaryOperator *op3 = BinaryOperator::Create(Instruction::Add, startVar,
                                                 CONST_I32(4), "", insertAfter);
    BinaryOperator *op4 = BinaryOperator::Create(Instruction::Sub, startVar,
                                                 CONST_I32(3), "", insertAfter);
    BinaryOperator *op5 =
        BinaryOperator::Create(Instruction::Mul, op1, op2, "", insertAfter);
    BinaryOperator *op6 =
        BinaryOperator::Create(Instruction::Mul, op3, op4, "", insertAfter);
    BinaryOperator *op7 =
        BinaryOperator::Create(Instruction::Sub, op5, op6, "", insertAfter);
    BinaryOperator *op8 = BinaryOperator::Create(Instruction::Sub, op7,
                                                 CONST_I32(9), "", insertAfter);
    result = op8;
  }
  return result;
}
FunctionPass *llvm::createRandomControlFlow() {
  return new RandomControlFlow();
}

char RandomControlFlow::ID = 0;
static RegisterPass<RandomControlFlow> X("rcf","My Random control flow obfuscation");