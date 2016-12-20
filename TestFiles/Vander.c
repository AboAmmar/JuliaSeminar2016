#include <stdio.h>
#include <stdlib.h>
int main (){
    int i, j, rows, cols, *x;
    double  **V;
    rows = cols = 10000;

    x = (int *) malloc(rows * sizeof( int ));
    for (i = 0; i < rows; i++){
        x[i] = i + 1;
    }

    V = (double **)malloc(sizeof(double*) * rows);
    for (i = 0; i < rows; i++){
        V[i] = (double *) malloc(sizeof(double) * cols);
    }

    for (i = 0; i < rows; i++){
        V[i][0] = 1.0;
    }


    for (i = 0; i < rows; i++){
        for (j = 1; j < cols; j++){
            V[i][j] = x[i] * V[i][j-1];
        }
    }

    printf("%.2f\n", V[4][0]);

    return 0;
}

