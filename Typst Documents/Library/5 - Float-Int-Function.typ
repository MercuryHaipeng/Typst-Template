= Float
#float(false) \
#float(true) \
#float(4) \
#float(40%) \
#float("2.7") \
#float("1e5")

// Checks if a float is not a number.
#float.is-nan(0) \
#float.is-nan(1) \
#float.is-nan(float.nan)

// Checks if a float is infinite.
#float.is-infinite(0) \
#float.is-infinite(1) \
#float.is-infinite(float.inf)

// Calculates the sign of a floating point number. 
#5.0.signum() \
#(-5.0).signum() \
#0.0.signum() \
#float.nan.signum()

// Interprets bytes as a float, and the default endian is "little" 
// "00 00 00 00 00 00 F0 3F" -> 0x3FF0000000000000 -> 1.0
#float.from-bytes(bytes((0, 0, 0, 0, 0, 0, 240, 63))) \
// "3F F0 00 00 00 00 00 00" -> 0x3FF0000000000000 -> 1.0
#float.from-bytes(bytes((63, 240, 0, 0, 0, 0, 0, 0)), endian: "big")

// Converts a float to bytes. 
#array(1.0.to-bytes(endian: "big")) \
#array(1.0.to-bytes())

#pagebreak()

= Int
#(1 + 2) \
#(2 - 5) \
#(3 + 4 < 8) \
#0xff \
#0o10 \
#0b1001

#int(false) \
#int(true) \
#int(2.7) \
#int(decimal("3.8")) \
#(int("27") + int("4"))

// Calculates the sign of an integer.
#5.signum() \
#(-5).signum() \
#0.signum()

// 以下操作数均视为64位的带符号整数
// Calculates the bitwise NOT of an integer. (64位的带符号整数按位取反)
#4.bit-not() \  // 4 的二进制表示为 000...0100，按位取反后为 111...1011，即 -5
#(-1).bit-not() // -1 的二进制表示为 111...1111，按位取反后为 000...0000，即 0

// Calculates the bitwise AND between two integers. (按位与)
#128.bit-and(192)

// Calculates the bitwise OR between two integers. (按位或)
#64.bit-or(32)

// Calculates the bitwise XOR between two integers. 
#64.bit-xor(96)

// Shifts the operand's bits to the left by the specified amount. 
//操作数被视为一个64位的带符号整数。如果结果过大，无法放入64位整数，就会发生错误。
#33.bit-lshift(2) \
#(-1).bit-lshift(3)

// Shifts the operand's bits to the right by the specified amount. Performs an arithmetic shift by default (extends the sign bit to the left, such that negative numbers stay negative), but that can be changed by the logical parameter.
#64.bit-rshift(2) \
#(-8).bit-rshift(2) \
#(-8).bit-rshift(2, logical: true)

// Converts bytes to an integer. 
#int.from-bytes(bytes((0, 0, 0, 0, 0, 0, 0, 1))) \
#int.from-bytes(bytes((1, 0, 0, 0, 0, 0, 0, 0)), endian: "big")

// Converts an integer to bytes.
#array(1000.to-bytes(endian: "big")) \ // 0x03E8 -> 1000
#array(10000.to-bytes(size: 4)) //  0x(10, 27, 0, 0) -> 0x002710 -> 10000

#pagebreak()

= Function
// Call a function.
#list([A], [B])

// Named arguments and trailing
#enum(start: 1)[A][B][C]

// Version without parentheses.
#list[A][B]

== Defining functions
#let alert(body, fill: red) = {
  set text(white)
  set align(center)
  rect(
    fill: fill,
    inset: 8pt,   // 8pt 内边距
    radius: 4pt,  // 4pt 圆角
    [*Warning:\ #body*],
  )
}
#alert[
  Danger is imminent!
]
#alert(fill: blue)[
  KEEP OFF TRACKS
]

== Unnamed functions
#show "once?": it => [#it #it]
once? // 匿名函数接受一个参数 it，并返回一个列表，其中包含两次 it 的值。

#show heading.where(level: 1): set text(red)
#show heading.where(level: 2): set text(blue)
#show heading.where(level: 3): set text(green)
= Section
== Subsection
=== Sub-subsection