#!/bin/sh
if [ $# -ne 1 ]
then
echo "This script needs one argument which is the input file"
echo "Usage ./run.sh input_file"
exit 0
fi
echo "Compiling..."
make -j4 # Compile the code
echo "Producing the output LLVM IR Code"
./a.ofstream1 $1 >llout 2>&1
echo "Done"
