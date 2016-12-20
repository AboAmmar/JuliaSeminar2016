# Recursive Fibonacci
fibr(n) = n < 2 ? n : fibr(n-1) + fibr(n-2)

fibr(20)  # 6765
fibr(20)  # 6765

@time fibr(45)