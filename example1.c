# include <stdio.h>

int i = 0;
int n = 4;

int main() {   
    while (n != 1) {
        i = i + 1;
        if ((n % 2) == 0)
            n = n/2;
        else
            n = 3*n + 1;
    }
    printf("%d\n", i);
    return 0;
}