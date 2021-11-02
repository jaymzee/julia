using Printf

function g(x::T, y::T)::T where {T}
    2x + 2y
end

Base.show(io::IO, x::Float64) = @printf(io, "%1.3f", x)

println("ints: ", g(3, 4))
println("reals: ", g(3.0, 4.0))
println("complex: ", g(3 + 0im, 4 + 0im))
println("rationals: ", g(1//2, 1//3))
