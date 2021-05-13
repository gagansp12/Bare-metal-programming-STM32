// https://sourceware.org/binutils/docs/as/
// https://microcontrollerslab.com/embedded-systems-build-process-using-gnu-toolchain/#Install_GCC_toolchain_for_ARM_Microcontroller

/*
CROSS Platform compilation-bare metal programming  
command to convert code in assembly language:

$ arm-none-eabi-gcc -c -mcpu=cortex-m4 -mthumb -S test1.c -o test1.s
$ arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -S test1.c -o test1.s

-----------------------------------------------------------------
create an object file of above given code by using this command: 

$ arm-none-eabi-gcc -c -mcpu=cortex-m4 -mthumb test1.c -o test1.o

------------------------------------------------------------------

Analyze object file using this command:

$ arm-none-eabi-objdump -h test1.o

*/ 



static int j = 25;
static int i = 10;



int sum = 0;
void main()
{
    sum = i+j;
}