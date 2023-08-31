#ifndef _SPLIT_BASIC_BLOCK_H_
#define _SPLIT_BASIC_BLOCK_H_
#include "llvm/IR/Function.h"
#include "llvm/Pass.h"

namespace llvm{
    FunctionPass* createSplitBasicBlockPass();
}
#endif