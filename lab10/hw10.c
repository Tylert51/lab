// Tyler Tang

#include <stdio.h>

int compute(int t) {
    int a = 1;
    int b = 1;

    for(int i = a; i <= t; i++) {
        a = a << 2;
    }

    return a;
}

int main() {
    int t = 5; 

    int ans = compute(t);

    printf("%d", ans);
}