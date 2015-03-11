make re
gcc main.c
export LD_PRELOAD=`pwd`/libasm.so
env | grep LD_PRELOAD
./a.out
