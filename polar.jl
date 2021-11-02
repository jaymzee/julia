function polar(r, theta)
    th = pi * theta / 180
    r * (cos(th) + sin(th) * im)
end
