#ifndef _RANDOM_CONTROL_FLOW_H_
#define _RANDOM_CONTROL_FLOW_H_
#include "llvm/IR/Function.h"
#include "llvm/Pass.h"

namespace llvm{
    FunctionPass* createRandomControlFlow();
}
#endif