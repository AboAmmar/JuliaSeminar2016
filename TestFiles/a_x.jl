# Julia vesion 0.9999^(1:10^8)
function vecvec(n)
    y = Array(Float64,n)
    y[1] = 0.9999
    for i = 2:n
        @inbounds y[i] = y[i-1] * 0.9999
    end
    y[5]
end

vecvec(100)
for i=1:5
    @time vecvec(10^8)
end




# include("C:/Users/Seif/Desktop/Julia_Presentation/Comparisons/0.9999^(1-10^8)/Julia_Test.jl")
