#include "llvm/IR/Function.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Transforms/Utils/ValueMapper.h"
#include "llvm/Transforms/Utils/Cloning.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Instructions.h"
#include "SplitBasicBlock.h"
#include "Utils.h"
#include <vector>
#include <cstdlib>
#include <ctime> 
using std::vector; 
using namespace llvm;
static cl::opt<int> obfuTimes("bcf_loop",cl::init(1),cl::desc("Obfucase a function <bcf_loop> time()."));
namespace{
    class BogusControlFlow : public FunctionPass{
        public:
            static char ID;
            BogusControlFlow():FunctionPass(ID){
                srand(time(NULL));
            }
            bool runOnFunction(Function &F);
            void bogus(BasicBlock *BB);
            Value * createBogusCmp(BasicBlock *insertAfter);
    };
}

bool BogusControlFlow::runOnFunction(Function &F){
    INIT_CONTEXT(F);
    FunctionPass *pass =createSplitBasicBlockPass();
    pass->runOnFunction(F);
     for(int i=0;i<obfuTimes;i++){
        vector<BasicBlock*> origBB;
        for(BasicBlock& BB:F){
            origBB.push_back(&BB);
        }
        for(BasicBlock *BB:origBB){
            bogus(BB);
        }
     }
     return true;

}
Value *BogusControlFlow::createBogusCmp(BasicBlock * insertAfter){
    Module *M=insertAfter->getModule();
    GlobalVariable *xptr= new GlobalVariable(*M,TYPE_I32,false,GlobalValue::CommonLinkage,CONST_I32(0),"x");  // False ->  不是常量   设置 x 初始值为 0;
    GlobalVariable *yptr= new GlobalVariable(*M,TYPE_I32,false,GlobalValue::CommonLinkage,CONST_I32(0),"y");  
    LoadInst *x=new LoadInst(TYPE_I32,xptr,"",insertAfter); //全局变量不能直接使用，用load来读取
    LoadInst *y=new LoadInst(TYPE_I32,yptr,"",insertAfter);
    ICmpInst *cmp1=new ICmpInst(*insertAfter,CmpInst::ICMP_SLT,y,CONST_I32(10));
    BinaryOperator *opt1=BinaryOperator::CreateAdd(x,CONST_I32(1),"",insertAfter);   
    BinaryOperator *opt2=BinaryOperator::CreateMul(x,opt1,"",insertAfter);   
    BinaryOperator *opt3=BinaryOperator::CreateSRem(opt2,CONST_I32(2),"",insertAfter);   
    ICmpInst *cmp2=new ICmpInst(*insertAfter,CmpInst::ICMP_EQ,opt3,CONST_I32(0));
    return BinaryOperator::CreateOr(cmp1,cmp2,"",insertAfter);


}
void BogusControlFlow::bogus(BasicBlock *entryBB){
    BasicBlock *bodyBB=entryBB->splitBasicBlock(entryBB->getFirstNonPHI(),"BodyBB");
    BasicBlock *endBB=bodyBB->splitBasicBlock(bodyBB->getTerminator(),"endBB");

    //第二步，对中间的基本块 BodyBB 进行克隆，得到cloneBB
    BasicBlock *cloneBB=createCloneBasicBlock(bodyBB);

    //第三部 构建虚假跳转
    entryBB->getTerminator()->eraseFromParent();    
    bodyBB->getTerminator()->eraseFromParent();    
    cloneBB->getTerminator()->eraseFromParent();

     Value *cond1 =createBogusCmp(entryBB);//创建恒为真的比较式
     Value *cond2 =createBogusCmp(bodyBB); 

     BranchInst::Create(bodyBB,cloneBB,cond1,entryBB);
     BranchInst::Create(endBB,cloneBB,cond2,bodyBB);
     BranchInst::Create(bodyBB,cloneBB);


}
char BogusControlFlow::ID=0;
static RegisterPass<BogusControlFlow> X("bcf","My control bogus control flattening obfuscation");   //向LLVM注册我们的pass    其中X()中的第一个参数是指定LLVM Pass的参数 ，这样再使用opt加载这个so文件的时候，用这个参数来指定用哪个Pass来优化，第二个参数就是对Pass的描述。