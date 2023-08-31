#include "llvm/IR/Function.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Pass.h"
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
#define NUMBER_ADD_SUBST 4
#define NUMBER_SUB_SUBST 3
#define NUMBER_AND_SUBST 2
#define NUMBER_OR_SUBST 2
#define NUMBER_XOR_SUBST 2
using namespace llvm;
using std::vector;
static cl::opt<int> obfuTimes("sub_loop",cl::init(1),cl::desc("Obfucase a function <sub_loop> time()."));
namespace {
    class Substitution:public FunctionPass{
        public:
        static char ID;
        Substitution():FunctionPass(ID){
            srand(time(NULL));
        }
        bool runOnFunction(Function &F) ;
        void substitute(BinaryOperator *BI);
        // 替换 Add 指令
        void substituteAdd(BinaryOperator *BI) ;
        // 加法替换：a = b + c -> a = b - (-c)
        void addNeg(BinaryOperator *BI) ;
        // 加法替换：a = b + c -> a = -(-b + (-c))
        void addDoubleNeg(BinaryOperator *BI) ;
        // 加法替换：a = b + c -> r = rand (); a = b + r; a = a + c; a = a - r
        void addRand(BinaryOperator *BI) ;
        // 加法替换：a = b + c -> r = rand (); a = b - r; a = a + b; a = a + r
        void addRand2(BinaryOperator *BI) ;

        // 替换 Sub 指令
        void substituteSub(BinaryOperator *BI) ;
        // 减法替换：a = b - c -> a = b + (-c)
        void subNeg(BinaryOperator *BI) ;
        // 减法替换：a = b - c -> r = rand (); a = b + r; a = a - c; a = a - r
        void subRand(BinaryOperator *BI) ;
        // 减法替换：a = b - c -> a = b - r; a = a - c; a = a + r
        void subRand2(BinaryOperator *BI) ;

        // 替换 And 指令
        void substituteAnd(BinaryOperator *BI) ;
        // 与替换：a = b & c -> a = (b ^ ~c) & b
        void andSubstitute(BinaryOperator *BI) ;
        // 与替换：a = b & c -> a = ~(~b | ~c) & (r | ~r)
        void andSubstituteRand(BinaryOperator *BI) ;

        // 替换 Or 指令
        void substituteOr(BinaryOperator *BI) ;
        // 或替换：a = b | c -> a = (b & c) | (b ^ c)
        void orSubstitute(BinaryOperator *BI) ;
        // 或替换：a = b | c -> a = ~(~b & ~c) & (r | ~r)
        void orSubstituteRand(BinaryOperator *BI) ;

        // 替换 Xor 指令
        void substituteXor(BinaryOperator *BI) ;
        // 异或替换：a = b ^ c -> a = ~b & c | b & ~c
        void xorSubstitute(BinaryOperator *BI) ;
        // 异或替换：a = b ^ c -> (b ^ r) ^ (c ^ r) <=> (~b & r | b & ~r) ^ (~c & r |
        // c & ~r)
        void xorSubstituteRand(BinaryOperator *BI) ;
    };
    
}
bool Substitution::runOnFunction(Function &F){
        for(int i=0;i<obfuTimes;i++){
        for(BasicBlock &BB:F){
            vector<Instruction*>origInst;
            for(Instruction &I:BB){
                origInst.push_back(&I);
            }
            for(Instruction *I:origInst){ //遍历所有指令
                if(BinaryOperator *BI=dyn_cast<BinaryOperator>(I)){
                        substitute(BI);
                }
                // if(isa<BinaryOperator>(I)){
                //     BinaryOperator *BI=cast<BinaryOperator>(I);
                //     substitute(BI);
                // }
            }
        }
    }
}
void Substitution::substitute(BinaryOperator *BI){
    switch (BI->getOpcode())
    {
    case BinaryOperator::Add:
        substituteAdd(BI);
        break;
    case BinaryOperator::Sub:
        substituteSub(BI);
        break;
    case BinaryOperator::Xor:
        substituteXor(BI);
        break;
    case BinaryOperator::And:
        substituteAnd(BI);
    case BinaryOperator::Or:
        substituteOr(BI);
    default:
        break;
    }
}
void Substitution::substituteAdd(BinaryOperator *BI){
    int choice=rand()%NUMBER_ADD_SUBST;
    switch(choice){
        case 0:
            addNeg(BI);
            break;
        case 1:
            addDoubleNeg(BI);
            break;
        case 2:
            addRand(BI);
            break;
        case 3:
            addRand2(BI);
            break;
        default:
            break;
    }
}
// 加法替换：a = b + c -> a = b - (-c)
void Substitution::addNeg(BinaryOperator *BI) {
    BinaryOperator *opt1=BinaryOperator::CreateNeg(BI->getOperand(1),"",BI);
    BinaryOperator *opt2=BinaryOperator::CreateSub(BI->getOperand(0),opt1,"",BI);
    BI->replaceAllUsesWith(opt2);
}
// 加法替换：a = b + c -> a = -(-b + (-c))
void Substitution::addDoubleNeg(BinaryOperator *BI) {
    BinaryOperator *op1 = BinaryOperator::CreateNeg(BI->getOperand(0),"",BI);
    BinaryOperator *op2 = BinaryOperator::CreateNeg(BI->getOperand(1),"",BI);
    BinaryOperator *op3 = BinaryOperator::CreateAdd(op1, op2,"",BI);
    BinaryOperator *op = BinaryOperator::CreateNeg(op3,"",BI);
    BI->replaceAllUsesWith(op);
}
// 加法替换：a = b + c -> r = rand (); a = b + r; a = a + c; a = a - r
void Substitution::addRand(BinaryOperator *BI) {
    ConstantInt *r =(ConstantInt*)CONST(BI->getType(),rand());
    BinaryOperator * op1 = BinaryOperator::CreateAdd(BI->getOperand(0), r,"",BI);
    BinaryOperator *op2 = BinaryOperator::CreateAdd(op1, BI->getOperand(1),"",BI);
    BinaryOperator *op = BinaryOperator::CreateSub(op2, r,"",BI);
    BI->replaceAllUsesWith(op);
}
// 加法替换：a = b + c -> r = rand (); a = b - r; a = a + b; a = a + r
void Substitution::addRand2(BinaryOperator *BI) {
    ConstantInt *r =(ConstantInt*)CONST(BI->getType(),rand());
    BinaryOperator * op1 = BinaryOperator::CreateSub(BI->getOperand(0), r,"",BI);
    BinaryOperator *op2 = BinaryOperator::CreateAdd(op1, BI->getOperand(1),"",BI);
    BinaryOperator *op = BinaryOperator::CreateAdd(op2, r,"",BI);
    BI->replaceAllUsesWith(op);
}
// 替换 Sub 指令
void Substitution::substituteSub(BinaryOperator *BI) {
        int choice=rand()%NUMBER_SUB_SUBST;
    switch(choice){
        case 0:
            subNeg(BI);
            break;
        case 1:
            subRand(BI);
            break;
        case 2:
            subRand2(BI);
            break;
        default:
            break;
    }
}
// 减法替换：a = b - c -> a = b + (-c)
void Substitution::subNeg(BinaryOperator *BI) {
    BinaryOperator *opt1=BinaryOperator::CreateNeg(BI->getOperand(1),"",BI);
    BinaryOperator *opt2=BinaryOperator::CreateAdd(BI->getOperand(0),opt1,"",BI);
    BI->replaceAllUsesWith(opt2);
}
// 减法替换：a = b - c -> r = rand (); a = b + r; a = a - c; a = a - r
void Substitution::subRand(BinaryOperator *BI) {
    ConstantInt *r =(ConstantInt*)CONST(BI->getType(),rand());
    BinaryOperator * op1 = BinaryOperator::CreateAdd(BI->getOperand(0), r,"",BI);
    BinaryOperator *op2 = BinaryOperator::CreateSub(op1, BI->getOperand(1),"",BI);
    BinaryOperator *op = BinaryOperator::CreateSub(op2, r,"",BI);
    BI->replaceAllUsesWith(op);
}
// 减法替换：a = b - c -> a = b - r; a = a - c; a = a + r
void Substitution::subRand2(BinaryOperator *BI) {
    ConstantInt *r =(ConstantInt*)CONST(BI->getType(),rand());
    BinaryOperator * op1 = BinaryOperator::CreateSub(BI->getOperand(0), r,"",BI);
    BinaryOperator *op2 = BinaryOperator::CreateSub(op1, BI->getOperand(1),"",BI);
    BinaryOperator *op = BinaryOperator::CreateAdd(op2, r,"",BI);
    BI->replaceAllUsesWith(op);
}
// 替换 And 指令
void Substitution::substituteAnd(BinaryOperator *BI) {
    int choice=rand()%NUMBER_AND_SUBST;
    switch(choice){
        case 0:
            andSubstitute(BI);
            break;
        case 1:
            andSubstituteRand(BI);
            break;
        default:
            break;
    }
}
// 与替换：a = b & c -> a = (b ^ ~c) & b
void Substitution::andSubstitute(BinaryOperator *BI) {
    BinaryOperator *opt1=BinaryOperator::CreateNot(BI->getOperand(1),"",BI);
    BinaryOperator *opt2=BinaryOperator::CreateXor(BI->getOperand(0),opt1,"",BI);
    BinaryOperator *opt3=BinaryOperator::CreateAnd(BI->getOperand(0),opt2,"",BI);
    BI->replaceAllUsesWith(opt3);
}
// 与替换：a = b & c -> a = ~(~b | ~c) & (r | ~r)
void Substitution::andSubstituteRand(BinaryOperator *BI) {
    ConstantInt *r=(ConstantInt*)CONST(BI->getType(),rand());
    BinaryOperator *opt1=BinaryOperator::CreateNot(BI->getOperand(1),"",BI);
    BinaryOperator *opt2=BinaryOperator::CreateNot(BI->getOperand(0),"",BI);
    BinaryOperator *opt3=BinaryOperator::CreateOr(opt1,opt2,"",BI);
    BinaryOperator *opt4=BinaryOperator::CreateNot(opt3,"",BI);

    BinaryOperator *opt5=BinaryOperator::CreateNot(r,"",BI);
    BinaryOperator *opt6=BinaryOperator::CreateOr(r,opt5,"",BI);
    BinaryOperator *opt7=BinaryOperator::CreateAnd(opt6,opt4,"",BI);
    BI->replaceAllUsesWith(opt7);
}

// 替换 Or 指令
void Substitution::substituteOr(BinaryOperator *BI) {
    int choice=rand()%NUMBER_OR_SUBST;
    switch(choice){
        case 0:
            orSubstitute(BI);
            break;
        case 1:
            orSubstituteRand(BI);
            break;
        default:
            break;
    }
}
// 或替换：a = b | c -> a = (b & c) | (b ^ c)
void Substitution::orSubstitute(BinaryOperator *BI) {
    BinaryOperator *opt1=BinaryOperator::CreateAnd(BI->getOperand(0),BI->getOperand(1),"",BI);
    BinaryOperator *opt2=BinaryOperator::CreateXor(BI->getOperand(0),BI->getOperand(1),"",BI);
    BinaryOperator *opt3=BinaryOperator::CreateOr(opt1,opt2,"",BI);
    BI->replaceAllUsesWith(opt3);
}
// 或替换：a = b | c -> a = ~(~b & ~c) & (r | ~r)
void Substitution::orSubstituteRand(BinaryOperator *BI) {
    ConstantInt *r=(ConstantInt*)CONST(BI->getType(),rand());
    BinaryOperator *opt1=BinaryOperator::CreateNot(BI->getOperand(1),"",BI);
    BinaryOperator *opt2=BinaryOperator::CreateNot(BI->getOperand(0),"",BI);
    BinaryOperator *opt3=BinaryOperator::CreateAnd(opt1,opt2,"",BI);
    BinaryOperator *opt4=BinaryOperator::CreateNot(opt3,"",BI);

    BinaryOperator *opt5=BinaryOperator::CreateNot(r,"",BI);
    BinaryOperator *opt6=BinaryOperator::CreateOr(r,opt5,"",BI);
    BinaryOperator *opt7=BinaryOperator::CreateAnd(opt6,opt4,"",BI);
    BI->replaceAllUsesWith(opt7);
}

// 替换 Xor 指令
void Substitution::substituteXor(BinaryOperator *BI) {
    int choice=rand()%NUMBER_XOR_SUBST;
    switch(choice){
        case 0:
            xorSubstitute(BI);
            break;
        case 1:
            xorSubstituteRand(BI);
            break;
        default:
            break;
    }
}
// 异或替换：a = b ^ c -> a = ~b & c | b & ~c
void Substitution::xorSubstitute(BinaryOperator *BI) {
    BinaryOperator *opt1=BinaryOperator::CreateNot(BI->getOperand(0),"",BI);
    BinaryOperator *opt2=BinaryOperator::CreateAnd(BI->getOperand(1),opt1,"",BI);
    BinaryOperator *opt3=BinaryOperator::CreateNot(BI->getOperand(1),"",BI);
    BinaryOperator *opt4=BinaryOperator::CreateAnd(BI->getOperand(0),opt3,"",BI);
    BinaryOperator *opt5=BinaryOperator::CreateOr(opt4,opt2,"",BI);
    BI->replaceAllUsesWith(opt5);
}
// 异或替换：a = b ^ c -> (b ^ r) ^ (c ^ r) <=> (~b & r | b & ~r) ^ (~c & r | c & ~r)
void Substitution::xorSubstituteRand(BinaryOperator *BI) {
    ConstantInt *r=(ConstantInt*)CONST(BI->getType(),rand());
    BinaryOperator *opt1=BinaryOperator::CreateNot(BI->getOperand(0),"",BI);
    BinaryOperator *opt2=BinaryOperator::CreateAnd(r,opt1,"",BI);
    BinaryOperator *opt3=BinaryOperator::CreateNot(r,"",BI);
    BinaryOperator *opt4=BinaryOperator::CreateAnd(opt3,BI->getOperand(0),"",BI);
    BinaryOperator *opt5=BinaryOperator::CreateOr(opt4,opt2,"",BI);

    BinaryOperator *opt6=BinaryOperator::CreateNot(BI->getOperand(1),"",BI);
    BinaryOperator *opt7=BinaryOperator::CreateAnd(r,opt6,"",BI);
    BinaryOperator *opt8=BinaryOperator::CreateNot(r,"",BI);
    BinaryOperator *opt9=BinaryOperator::CreateAnd(opt8,BI->getOperand(1),"",BI);
    BinaryOperator *opt10=BinaryOperator::CreateOr(opt7,opt9,"",BI);
    BinaryOperator *opt11=BinaryOperator::CreateXor(opt10,opt5,"",BI);
    BI->replaceAllUsesWith(opt11);
}
char Substitution::ID=0;
static RegisterPass<Substitution> X("sub","Replace a operator with equivalent instructions"); 