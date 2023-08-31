cd ./Build
cmake ../Transforms
make
cd ../Test
clang -S -emit-llvm TestProgram.cpp -o IR/TestProgram.ll
opt -load ../Build/LLVMObfuscator.so -hlw -S IR/TestProgram.ll -o IR/TestProgram_hlw.ll
clang IR/TestProgram_hlw.ll -o Bin/TestProgram_hlw
./Bin/TestProgram_hlw flag{s1mpl3_11vm_d3m0}

# echo "------------------------------------Split Basic Block --------------------------------------------"
# opt -load ../Build/LLVMObfuscator.so -split -S IR/TestProgram.ll -o IR/TestProgram_split.ll 
# clang IR/TestProgram_split.ll -o Bin/TestProgram_split
# ./Bin/TestProgram_split flag{s1mpl3_11vm_d3m0}


# echo "------------------------------------Control Flow Block --------------------------------------------"
# opt -lowerswitch -S IR/TestProgram.ll -o IR/TestProgram_lowerswitch.ll
# opt -load ../Build/LLVMObfuscator.so -fla -S IR/TestProgram_lowerswitch.ll -o IR/TestProgram_fla.ll
# clang  IR/TestProgram_fla.ll -o Bin/TestProgram_fla
# ./Bin/TestProgram_fla flag{s1mpl3_11vm_d3m0}

# echo "------------------------------------Bogus Control Flow Block --------------------------------------------"
# opt -load ../Build/LLVMObfuscator.so -bcf -S IR/TestProgram.ll -o IR/TestProgram_bcf.ll
# clang  IR/TestProgram_bcf.ll -o Bin/TestProgram_bcf
# ./Bin/TestProgram_bcf flag{s1mpl3_11vm_d3m0}

echo "------------------------------------Substitution --------------------------------------------"
opt -load ../Build/LLVMObfuscator.so -sub -sub_loop 2 -S IR/TestProgram.ll -o IR/TestProgram_sub.ll
clang  IR/TestProgram_sub.ll -o Bin/TestProgram_sub
./Bin/TestProgram_sub flag{s1mpl3_11vm_d3m0}

# echo "------------------------------------Random Control Flow Block --------------------------------------------"
# opt -load ../Build/LLVMObfuscator.so -rcf -rcf_loop 1 -S IR/TestProgram.ll -o IR/TestProgram_rcf.ll
# llc -filetype=obj -mattr=+rdrnd  IR/TestProgram_rcf.ll -o Bin/TestProgram_rcf.o # 不加这行，编译器后端会找不到rdrnd 所以要手动静态编译成.o文件
# clang  Bin/TestProgram_rcf.o -o Bin/TestProgram_rcf
# ./Bin/TestProgram_rcf flag{s1mpl3_11vm_d3m0}

# echo "------------------------------------Constant Substitution  --------------------------------------------"
# opt -load ../Build/LLVMObfuscator.so -csub -csub_loop 3 -S IR/TestProgram.ll -o IR/TestProgram_csub.ll 
# clang IR/TestProgram_csub.ll -o Bin/TestProgram_csub
# ./Bin/TestProgram_csub flag{s1mpl3_11vm_d3m0}







# opt -load ../Build/LLVMObfuscator.so -hlw -split -S  TestProgram.ll -o TestProgram_hlw_split.ll