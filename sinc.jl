using Printf

# sinc function
function f(x::Number)
    if x == 0
        return 0
    end
    sin(x) / x
end

# alter printing of floats
Base.show(io::IO, x::Float64) = @printf(io, "%1.3f", x)

x = 1:5
y = 1.0:5.0
A = [1 2 3; 4 5 6; 7 8 9]
println(f(0.5)) # scalar float
println(f(1 + 2im)) # scalar complex
println(f.(x)) # vector{int}
println(f.(y)) # vector{float}
println(f.(A)) # matrix{int}
