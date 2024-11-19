//Tyler Tang

#include <stdio.h>

int main() {
    int a = 0; 
    int b = 582;

    int x =  ((a << 2) | (b << 4) | ( a & b ) ) & 0xF351;
    int max = x;

    for(int i = 1; i < 100; i++) {
        x = ((i << 2) | (b << 4) | ( i & b ) ) & 0xF351;

        if (x > max) {
            max = x;
        }
    }

    printf("%d", x);
}