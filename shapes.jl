struct Point{T <: Number}
    x::T
    y::T
end

struct Rect
    nw::Point
    se::Point
end

struct Circle
    radius::Number
end

p1 = Point(0, 0)
p2 = Point(3.0, 4.0)

r1 = Rect(p1, p2)
c1 = Circle(5)
c2 = Circle(22//7)

function distance(p1::Point, p2::Point)
    sqrt((p1.x-p2.x)^2 + (p1.y-p2.y)^2)
end

function area(r::Rect)
    dx = r.se.x - r.nw.x
    dy = r.se.y - r.nw.y
    dx * dy
end

function area(c::Circle)
    pi * c.radius^2
end

println("distance = ", distance(p2, p1))
println("rectangle area = ", area(r1))
println("circle (radius 5) area = ", area(c1))
println("circle (radius 22/7) area = ", area(c2))
