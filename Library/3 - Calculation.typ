= Algebraic operation
== abs
#calc.abs(-5) \
#calc.abs(5pt - 2cm) \
#calc.abs(2fr) \
#calc.abs(decimal("-342.440"))

== pow
- If this is a decimal, the exponent can only be an integer.
#calc.pow(2, 3) \
#calc.pow(decimal("2.5"), 2) \
#calc.pow(2.5, 2.5) \

== exp
#calc.exp(1) \
#calc.exp(2)

== sqrt
#calc.sqrt(16) \
#calc.sqrt(2.5)

== root
#calc.root(16.0, 4) \
#calc.root(27.0, 3)


= Trigonometric functions
#calc.sin(1.5) \
#calc.sin(90deg) 

#calc.cos(1.5) \
#calc.cos(90deg)

#calc.tan(1.5) \
#calc.tan(90deg)

#calc.asin(0) \
#calc.asin(1)

#calc.acos(0) \
#calc.acos(1)

#calc.atan(0) \
#calc.atan(1)

- Calculates the four-quadrant arc tangent of a coordinate.
#calc.atan2(1, 1) \
#calc.atan2(-2, -3)


= Hyperbolic angle
#calc.sinh(0) \
#calc.sinh(1.5)

#calc.cosh(0) \
#calc.cosh(1.5)

#calc.tanh(0) \
#calc.tanh(1.5)


= Mathematical statistics
#calc.log(100, base:10) // Default base is 10.

#calc.ln(calc.e)

#calc.fact(5)

- Returns the k-permutation of n, or the number of ways to choose k items from a set of n with regard to order.
$
  "perm"(n, k) &= n!/((n - k)!) \
  "perm"(5, 3) &= #calc.perm(5, 3)
$

- Returns the k-combination of n, or the number of ways to choose k items from a set of n without regard to order.
$ "calc.binom(5, 3)" = #calc.binom(5, 3) $

- Calculates the greatest common divisor of two integers. 
#calc.gcd(7, 42)

- Calculates the least common multiple of two integers. 
#calc.lcm(96, 128)

= Rounding functions
- Rounds a number down to the nearest integer.
#calc.floor(500.1)
#assert(calc.floor(3) == 3)
#assert(calc.floor(3.14) == 3)
#assert(calc.floor(decimal("-3.14")) == -4)

- Rounds a number up to the nearest integer.
#calc.ceil(500.1)
#assert(calc.ceil(3) == 3)
#assert(calc.ceil(3.14) == 4)
#assert(calc.ceil(decimal("-3.14")) == -3)

- Returns the integer part of a number.
#calc.trunc(15.9)
#assert(calc.trunc(3) == 3)
#assert(calc.trunc(-3.7) == -3)
#assert(calc.trunc(decimal("8493.12949582390")) == 8493)

- Returns the fractional part of a number.
#calc.fract(-3.1)
#assert(calc.fract(3) == 0)
#assert(calc.fract(decimal("234.23949211")) == decimal("0.23949211"))

- Rounds a number to the nearest integer.
#calc.round(3.1415, digits: 2)
#assert(calc.round(3) == 3)
#assert(calc.round(3.14) == 3)
#assert(calc.round(3.5) == 4.0)
#assert(calc.round(3333.45, digits: -2) == 3300.0)
#assert(calc.round(-48953.45, digits: -3) == -49000.0)
#assert(calc.round(3333, digits: -2) == 3300)
#assert(calc.round(-48953, digits: -3) == -49000)
#assert(calc.round(decimal("-6.5")) == decimal("-7"))
#assert(calc.round(decimal("7.123456789"), digits: 6) == decimal("7.123457"))
#assert(calc.round(decimal("3333.45"), digits: -2) == decimal("3300"))
#assert(calc.round(decimal("-48953.45"), digits: -3) == decimal("-49000"))

- Clamps a number between a minimum and maximum value. (把 value 限制在闭区间 [min, max])
#calc.clamp(5, 0, 4)
#assert(calc.clamp(5, 0, 10) == 5)
#assert(calc.clamp(5, 6, 10) == 6)
#assert(calc.clamp(decimal("5.45"), 2, decimal("45.9")) == decimal("5.45"))
#assert(calc.clamp(decimal("5.45"), decimal("6.75"), 12) == decimal("6.75"))

#calc.min(1, -3, -5, 20, 3, 6) \
#calc.min("typst", "is", "cool")

#calc.max(1, -3, -5, 20, 3, 6) \
#calc.max("typst", "is", "cool")

#calc.even(4) \
#calc.even(5) \
#range(10).filter(calc.even)

#calc.odd(4) \
#calc.odd(5) \
#range(10).filter(calc.odd)

- Calculates the remainder of two numbers. 
#calc.rem(7, 3) \
#calc.rem(7, -3) \
#calc.rem(-7, 3) \
#calc.rem(-7, -3) \
#calc.rem(1.75, 0.5)

- Performs euclidean division of two numbers. (余数必须非负)
#calc.div-euclid(7, 3) \
#calc.div-euclid(7, -3) \
#calc.div-euclid(-7, 3) \
#calc.div-euclid(-7, -3) \
#calc.div-euclid(1.75, 0.5) \
#calc.div-euclid(decimal("1.75"), decimal("0.5"))

- This calculates the least nonnegative remainder of a division. （商即为欧几里得除法）
#calc.rem-euclid(7, 3) \
#calc.rem-euclid(7, -3) \
#calc.rem-euclid(-7, 3) \
#calc.rem-euclid(-7, -3) \
#calc.rem-euclid(1.75, 0.5) \
#calc.rem-euclid(decimal("1.75"), decimal("0.5"))

- Calculates the quotient (floored division) of two numbers. (计算两个数字的商（底除法）)
$
       "quo"(a, b) & = floor(a/b) \
      "quo"(14, 5) & = #calc.quo(14, 5) \
  "quo"(3.46, 0.5) & = #calc.quo(3.46, 0.5)
$

- Calculates the p-norm of a sequence of values. (计算一组值的 p 范数)
#calc.norm(1, 2, -3, 0.5) \
#calc.norm(p: 3, 1, 2)