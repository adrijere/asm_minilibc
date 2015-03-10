make re
gcc main.c
export LD_PRELOAD=`pwd`/libasm.so
./a.out
