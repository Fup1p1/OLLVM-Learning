#include"Utils.h"
#include<vector>
#include "llvm/IR/Instructions.h"
#include "llvm/Transforms/Utils/Local.h"
#include "llvm/Transforms/Utils/ValueMapper.h"
#include "llvm/Transforms/Utils/Cloning.h"
using std::vector;
using namespace llvm;
LLVMContext *CONTEXT=nullptr;
void llvm::fixStack(Function &F){
    vector<PHINode*> origPHI;
    vector<Instruction*> origReg;
    BasicBlock &entryBB=F.getEntryBlock();
    for(BasicBlock &BB:F){
        for (Instruction &I:BB)
        {
            if(PHINode *PN=dyn_cast<PHINode>(&I)){
                origPHI.push_back(PN);
            }else if(!(isa<AllocaInst>(&I)&& I.getParent()==&entryBB)&& I.isUsedOutsideOfBlock(&BB)){//判断是不是逃逸变量(除了通过Alloc，并且定义在入口块的，都要处理)
                origReg.push_back(&I);
            }
        }
        
    }
    for(PHINode *PN:origPHI){
        DemotePHIToStack(PN,entryBB.getTerminator());
    }
    for(Instruction *I:origReg){
        DemoteRegToStack(*I,entryBB.getTerminator());
    }
}
BasicBlock * llvm::createCloneBasicBlock(BasicBlock *BB){
    //修复逃逸变量
    vector<Instruction*> origReg;
    BasicBlock &entryBB=BB->getParent()->getEntryBlock();
        for (Instruction &I:*BB)
        {
            if(!(isa<AllocaInst>(&I)&& I.getParent()==&entryBB)&& I.isUsedOutsideOfBlock(BB)){//判断是不是逃逸变量(除了通过Alloc，并且定义在入口块的，都要处理)
                origReg.push_back(&I);
            }
        }
    for(Instruction *I:origReg){
        DemoteRegToStack(*I,entryBB.getTerminator());
    }


    ValueToValueMapTy VMap;  //变量的映射表
    BasicBlock *cloneBB=CloneBasicBlock(BB,VMap,"cloneBB",BB->getParent());
    for(Instruction &I:*cloneBB){  
        for(int i=0;i<I.getNumOperands();i++){ //遍历操作数不能用for:each ，要用for循环
            Value *V=MapValue(I.getOperand(i),VMap);
            if(V){//判断映射是否成功
                I.setOperand(i,V);
            }
        }
    }

    return cloneBB;
}
