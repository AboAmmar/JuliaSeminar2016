!
program TestFib
    implicit none
    integer :: n = 45
    integer :: i = 0, c, fib

    print *, "Fibonacci series"

    do c = 1,n
        print *, fib(i)
        i = i + 1
    end do

end program TestFib

integer recursive function fib(n) result(r)
    implicit none
    integer, intent(in) :: n
    if (n < 2) then
        r = n
    else
        r = fib(n-1) + fib(n-2)
    end if
end function fib