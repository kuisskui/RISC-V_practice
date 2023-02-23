# include <stdio.h>

int n = 6079;
int is_prime = 0;
int k;

int main() {
    if (n == 1) is_prime = 0;
    else {
        is_prime = 1;
        k = 2;
        while (k < n) {
            if (n % k == 0) {
                is_prime = 0;
                break;
            }
            k++;
        }
    }
    printf("%d\n", is_prime);
    return 0;
}