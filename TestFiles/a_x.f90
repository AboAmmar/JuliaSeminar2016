program testrnd
    implicit none
    integer, parameter :: n = 100000000
    integer, parameter :: dp = kind(0.d0)
    real(dp) :: a = 0.9999, y(n) = 0.0
    integer  :: i

    y(1) = a
    do i=2,n
        y(i) = y(i-1) * a
    end do

    print *, y(5), kind( y(5) )

end program