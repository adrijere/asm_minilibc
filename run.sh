make re
export LD_PRELOAD=`pwd`/libasm.so
gcc main.c
