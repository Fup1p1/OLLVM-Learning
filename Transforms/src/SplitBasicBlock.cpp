//      		SplitBasicBlock.cpp
#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Support/raw_ostream.h"
#include <vector>
#include <llvm/Support/CommandLine.h>
#include "SplitBasicBlock.h"
using namespace llvm;
using std::vector;

static cl::opt<int> splitNum("split_num", cl::init(2), cl::desc("Split<split_num> time(s) each BB"));

namespace{     //自定义命名空间
    class SplitBasicBlock :public FunctionPass{     //继承FunctionPass类
        public :
            static char ID;
            SplitBasicBlock():FunctionPass(ID){}     //构造函数
            bool runOnFunction(Function &F);
            void split(BasicBlock *BB);
            bool containPHI(BasicBlock *BB);
    };

}
bool SplitBasicBlock::runOnFunction(Function &F){
		//todo
    vector<BasicBlock*> origBB;
    for(BasicBlock& BB: F){
        origBB.push_back(&BB);

    }for(BasicBlock *BB : origBB){
        if(!containPHI(BB))
            split(BB);
    }
}
bool SplitBasicBlock::containPHI(BasicBlock *BB){
    for(Instruction &I: *BB){
        if(isa<PHINode>(&I)){
            return true;
        }
    }
}
void SplitBasicBlock::split(BasicBlock *BB){
    int splitsize=(BB->size()+splitNum-1)/splitNum; //向上取整
    BasicBlock *curBB=BB;
    for(int i=0;i<splitNum;i++){
        int cnt=0;
        for(Instruction &I:*curBB){
            if(cnt++==splitsize){
                curBB=curBB->splitBasicBlock(&I);
                break;
            }
        }
    }

}
FunctionPass *llvm::createSplitBasicBlockPass(){
    return new SplitBasicBlock();
}
char SplitBasicBlock::ID=0;
static RegisterPass<SplitBasicBlock> X("split", "split one basic block into mut"); // 向LLVM注册我们的pass    其中X()中的第一个参数是指定LLVM Pass的参数 ，这样再使用opt加载这个so文件的时候，用这个参数来指定用哪个Pass来优化，第二个参数就是对Pass的描述。

