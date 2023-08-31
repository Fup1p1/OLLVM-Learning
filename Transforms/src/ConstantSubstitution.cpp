#include "llvm/IR/Function.h"
#include "llvm/Pass.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Transforms/Utils.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Transforms/Utils/Local.h"
#include "SplitBasicBlock.h"
#include "Utils.h"
#include <vector>
#include <cstdlib>
#include <ctime>
#define MAX_RAND 32767
#define NUMBER_CONST_SUBST 2
using namespace llvm;
using std::vector;
static cl::opt<int> obfuTimes("csub_loop",cl::init(1),cl::desc("Obfucase a function <obfu_loop> time(s)."));
namespace{
        class ConstantSubstitution :public FunctionPass{
        public :
            static char ID;
            
            ConstantSubstitution():FunctionPass(ID){
                srand(time(NULL));
            }
            bool runOnFunction(Function &F);
            void substitute(BinaryOperator *BI);
            void linearSubstitute(BinaryOperator *BI,int i);
            void bitwiseSubstitute(BinaryOperator *BI,int i);
    };
}
bool ConstantSubstitution::runOnFunction(Function &F){
    INIT_CONTEXT(F);
    for(int i=0;i<obfuTimes;i++){
        for(BasicBlock &BB:F){
            vector<Instruction*>origInst;
            for(Instruction &I:BB){
                origInst.push_back(&I);
            }
            for(Instruction *I:origInst){ //遍历所有指令
                if(BinaryOperator *BI=dyn_cast<BinaryOperator>(I)){//判断是不是二元运算指令
                    if(BI->getType()->isIntegerTy(32)){//仅对整数进行替换
                        substitute(BI);
                    }
                }
            }
        }
    }
}
void ConstantSubstitution::substitute(BinaryOperator *BI){
    int operandNum =BI ->getNumOperands();
    for(int i=0;i<operandNum;i++){
        if(isa<ConstantInt>(BI->getOperand(i))){
            int choice =rand()%NUMBER_CONST_SUBST;
            switch (choice)
            {
            case 0:
                linearSubstitute(BI,i); // 线性替换
                break;
            case 1:
                bitwiseSubstitute(BI,i);
                // bitwiseSubstitute(BI,i); // 按位运算替换
                break;
            default:
                break;
            }
        }
    }

}
void ConstantSubstitution::linearSubstitute(BinaryOperator *BI,int i){
    //线性替换 :Val -> ax+by+c
    //其中 val 为原常量 a, b 为随机常量 x, y 为随机全局变量 c = val - (ax + by)
    Module *M=BI->getModule();
    ConstantInt *val=cast<ConstantInt>(BI->getOperand(i));
    int randx=rand()%MAX_RAND,randy=rand()%MAX_RAND;
    int randa=rand()%MAX_RAND,randb=rand()%MAX_RAND;
    APInt c = val->getValue()-(randx*randa+randy*randb);

    GlobalVariable *xptr=new GlobalVariable(*M,TYPE_I32,false,GlobalValue::PrivateLinkage,CONST_I32(randx),"x");   //commonLinkage 是未初始化的全局变量，初始值只能为0，不能为其他值。这里我们设置的初始值x不能是0，所以不能设置成commonlinkage
    GlobalVariable *yptr=new GlobalVariable(*M,TYPE_I32,false,GlobalValue::PrivateLinkage,CONST_I32(randy),"y");   
    LoadInst *x=new LoadInst(TYPE_I32,xptr,"",BI);
    LoadInst *y=new LoadInst(TYPE_I32,yptr,"",BI);
    BinaryOperator *op1=BinaryOperator::CreateMul(CONST_I32(randa),x,"",BI);
    BinaryOperator *op2=BinaryOperator::CreateMul(CONST_I32(randb),y,"",BI);
    BinaryOperator *op3=BinaryOperator::CreateAdd(op1,op2,"",BI);
    BinaryOperator *op4=BinaryOperator::CreateAdd(op3,CONST_I32(c.getSExtValue()),"",BI);

    BI->setOperand(i,op4);
   
}
void ConstantSubstitution::bitwiseSubstitute(BinaryOperator *BI,int i){
    //按位运算替换：val -> (x << 5 | y >> 3) ^ c
    //其中 val 为原常量x, y 为随机全局变量 c = val ^ (x << 5 | y >> 3)
        Module *M=BI->getModule();
    ConstantInt *val=cast<ConstantInt>(BI->getOperand(i));
    int randx=rand()%MAX_RAND,randy=rand()%MAX_RAND;
    APInt c = val->getValue()^(randx<<5|randy>>3);

    GlobalVariable *xptr=new GlobalVariable(*M,TYPE_I32,false,GlobalValue::PrivateLinkage,CONST_I32(randx),"x");   //commonLinkage 是未初始化的全局变量，初始值只能为0，不能为其他值。这里我们设置的初始值x不能是0，所以不能设置成commonlinkage
    GlobalVariable *yptr=new GlobalVariable(*M,TYPE_I32,false,GlobalValue::PrivateLinkage,CONST_I32(randy),"y");   
    LoadInst *x=new LoadInst(TYPE_I32,xptr,"",BI);
    LoadInst *y=new LoadInst(TYPE_I32,yptr,"",BI);

    BinaryOperator *op1=BinaryOperator::CreateShl(x,CONST_I32(5),"",BI);
    BinaryOperator *op2=BinaryOperator::CreateLShr(y,CONST_I32(3),"",BI);  
    BinaryOperator *op3=BinaryOperator::CreateOr(op1,op2,"",BI);  
    BinaryOperator *op4=BinaryOperator::CreateXor(op3,CONST_I32(c.getSExtValue()),"",BI);

    BI->setOperand(i,op4);
}
char ConstantSubstitution::ID=0;
static RegisterPass<ConstantSubstitution> X("csub","Replace a constant value with equivalent instructions"); 