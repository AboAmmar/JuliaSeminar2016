#include <stdio.h>
#include <stdlib.h>
int main (){
    int i, n = 100000000;
    double a = 0.999, *y;

    y = (double*) malloc(n * sizeof( double ));

    y[0] = a;

    for (i = 1; i < n; i++){
        y[i] = y[i-1] * a;
    }

    printf("%.9f", y[4]);

    return 0;
}

