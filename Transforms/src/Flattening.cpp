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
using namespace llvm;
using std::vector;
namespace{
    class Flattening :public FunctionPass{
        public :
            static char ID;
            
            Flattening():FunctionPass(ID){
                srand(time(0));
            }
            void flatten(Function &F);
            bool runOnFunction(Function &F);

    };

}
bool Flattening::runOnFunction(Function &F){
    INIT_CONTEXT(F);
    FunctionPass * pass =createSplitBasicBlockPass();
    pass->runOnFunction(F);
    flatten(F);
    return true;
}
void Flattening::flatten(Function &F){
    //第一步,保存除了入口块的基本块
    vector<BasicBlock*> origBB;
    for(BasicBlock& BB:F){
        origBB.push_back(&BB);
    }
    origBB.erase(origBB.begin());
    BasicBlock &entryBlock=F.getEntryBlock();
    if(BranchInst *br=dyn_cast<BranchInst>(entryBlock.getTerminator())){
        if(br->isConditional()){//判断是不是条件跳转
            origBB.insert(origBB.begin(),entryBlock.splitBasicBlock(br));
        }
    }
    //第二步，创建分发块和返回块
    BasicBlock *dispatchBB=BasicBlock::Create(*CONTEXT,"dispatchBB",&F,&entryBlock);
    BasicBlock *retBB=BasicBlock::Create(*CONTEXT,"retBB",&F,&entryBlock);
    entryBlock.moveBefore(dispatchBB);
    entryBlock.getTerminator()->eraseFromParent();
    BranchInst::Create(dispatchBB,&entryBlock);
    BranchInst::Create(dispatchBB,retBB);

    //第三部，实现分发块的调度功能
    int randNumcase=rand();
    AllocaInst * swVarPtr =new AllocaInst(TYPE_I32,0,"swVar.ptr",entryBlock.getTerminator());
    new StoreInst(CONST_I32(randNumcase),swVarPtr,entryBlock.getTerminator());
    LoadInst *swVar=new LoadInst(TYPE_I32,swVarPtr,"swVAR",dispatchBB);
    BasicBlock *defaultBB = BasicBlock::Create(*CONTEXT,"defaultBB",&F,retBB);
    BranchInst::Create(retBB,defaultBB);  //基本块肯定要有一条中间指令，所以这里随便添加一条跳转指令
    SwitchInst *swInst=SwitchInst::Create(swVar,defaultBB,0,dispatchBB);//插入到分发块的后面

    //为每个基本块分配随机的case值
    for(BasicBlock *BB:origBB){
        BB->moveBefore(retBB);
        swInst->addCase(CONST_I32(randNumcase),BB);
        randNumcase=rand();

    }
    //第四步 实现调度变量自动调整

    for(BasicBlock *BB:origBB){
        if(BB->getTerminator()->getNumSuccessors()==0){//如果这个基本块的最后一条指令是返回指令(没有后继快)
            continue;
        } else if(BB->getTerminator()->getNumSuccessors()==1){//如果这个基本块还有一个后继块(即为绝对跳转)
            ConstantInt *numcase = swInst->findCaseDest(BB->getTerminator()->getSuccessor(0));
            new StoreInst(numcase,swVarPtr,BB->getTerminator());
            BB->getTerminator()->eraseFromParent();
            BranchInst::Create(retBB,BB);
        }else if(BB->getTerminator()->getNumSuccessors()==2){ //有两个后继块
             ConstantInt *numcase1 = swInst->findCaseDest(BB->getTerminator()->getSuccessor(0));
             ConstantInt *numcase2 = swInst->findCaseDest(BB->getTerminator()->getSuccessor(1));
             BranchInst *br1=cast<BranchInst>(BB->getTerminator()); //两个分支也有可能是switch指令，但是在混淆前，使用LLVM IR指令 (使用自带的 LowerSwitch的LLVM Pass)，将switch替换成了branch，所以这里最后一条指令只能是branch
             SelectInst *sel=SelectInst::Create(br1->getCondition(),numcase1,numcase2,"",BB->getTerminator());
             new StoreInst(sel,swVarPtr,BB->getTerminator());
            BB->getTerminator()->eraseFromParent(); //删除原先的终结指令
             BranchInst::Create(retBB,BB);
        }
    }
    //第五步 修复 phi指令和逃逸变量
    fixStack(F);
}

char Flattening::ID=0;
static RegisterPass<Flattening>X("fla","My control flow flattening obfuscation");
