struct Point{T <: Number}
    x::T
    y::T
end

function distance(p1::Point, p2::Point)
    sqrt((p1.x-p2.x)^2 + (p1.y-p2.y)^2)
end

struct Rect
    nw::Point
    se::Point
end

function area(r::Rect)
    dx = r.se.x - r.nw.x
    dy = r.se.y - r.nw.y
    dx * dy
end

struct Circle
    radius::Number
end

function area(c::Circle)
    pi * c.radius^2
end

struct Triangle{T <: Number}
    base::T
    width::T
end

function area(t::Triangle)
    1 // 2 * t.base * t.width
end

p1 = Point(0, 0)
p2 = Point(3.0, 4.0)

r1 = Rect(p1, p2)
c1 = Circle(5)
c2 = Circle(22//7)
t1 = Triangle(3, 4)
t2 = Triangle(3.0, 4.0)

println(p1, " ", p2, " distance = ", distance(p2, p1))
println(r1, ".area = ", area(r1))
println(c1, ".area = ", area(c1))
println(c2, ".area = ", area(c2))
println(t1, ".area = ", area(t1))
println(t2, ".area = ", area(t2))
