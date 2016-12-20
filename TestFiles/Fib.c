// Recursive Fibonacci
#include<stdio.h>

int fib (int);

int main()
{
   int n = 45;

   printf("Fibonacci series\n");

   printf("%d\n", fib(n));

   return 0;
}

int fib(int n) {
    return n < 2 ? n : fib(n-1) + fib(n-2);
}
