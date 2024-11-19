// Homework-09
#include <stdio.h>

int x[] = {10, 5, 130, 227, 84, 0};

int main()
{
    // using variable names similar to MIPS
    int *s0 = x; // same as "la $s0, x"
    int s1 = 0;  // same as "add $s1, $0, $0"

    // "*s0" gets the value pointed to by "s0".
    // "s0" contains the address of an element in the
    // "x" array, so "*s0" gets the value out of the array
    // similar to "lw $t0, 0($s0)"
    // our while loop repeats as long as we get a non-zero
    // number from the array
    while(*s0 != 0)
    {
        // add to the running total
        s1 = s1 + *s0;

        // increment by 1. C knows that
        // this is a pointer to an array of type
        // integer, so it quietly multiplies by 4,
        // so that we point to the next integer.
        s0 = s0 + 1;

        // The C compiler will put a jump
        // here to go back to the top of the loop
    }
    printf("The total of the array is :%d\n", s1);
}

