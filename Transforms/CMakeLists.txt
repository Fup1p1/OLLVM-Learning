project(OLLVM++)
cmake_minimum_required(VERSION 3.13.4)
find_package(LLVM REQUIRED CONFIG)

list(APPEND CMAKE_MODULE_PATH "${LLVM_CMAKE_DIR}")
include(AddLLVM)
include_directories("./include") # 包含 ./include 文件夹中的头文件

separate_arguments(LLVM_DEFINITIONS_LIST NATIVE_COMMAND ${LLVM_DEFINITIONS})
add_definitions(${LLVM_DEFINITIONS_LIST})
include_directories(${LLVM_INCLUDE_DIRS})

add_llvm_library( LLVMObfuscator MODULE
    src/HelloWorld.cpp
    src/SplitBasicBlock.cpp
    src/Utils.cpp
    src/Flattening.cpp
    src/BogusControlFlow.cpp
    src/RandomControlFlow.cpp
    src/ConstantSubstitution.cpp
    src/Substitution.cpp
)