--Basically a brute force attempt. For larger numbers, say where a+b+c=10000, this will take a long long time. At 1000 though, it takes a minute or so
riplet = [(x,y,z) | x <- [1..999], y <- [1..(1000-x)], z <- [1..(1000-x-y)], x+y+z == 1000, z>y, z>x, x^2+y^2==z^2]
