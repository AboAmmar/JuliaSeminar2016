program testvander
    implicit none
    integer  :: i, j
    integer, parameter    :: n = 10000
    integer, parameter    :: dp = kind(0.d0)
    real(dp), allocatable :: V(:,:), x(:)

    allocate(x(n),V(n,n))
    x = [(i, i=1,n)]

    do j = 1,n
        V(j,1) = 1.0_dp
    end do

    do i = 2,n
        do j = 1,n
            V(j,i) = x(j) * V(j,i-1)
        end do
    end do

    print *, V(5,1)

end program testvander
