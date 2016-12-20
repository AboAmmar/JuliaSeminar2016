function vander{T}(x::AbstractVector{T}, n=length(x))
    V = Array(T, n, n)
    for j = 1:n
        @inbounds V[j,1] = one(x[j])
    end
    for i = 2:n
        for j = 1:n
            @inbounds V[j,i] = x[j] * V[j,i-1]
        end
    end
    return V
end

vander(collect(1:100))

for i=1:5
    @time vander(collect(1:10000))
end

