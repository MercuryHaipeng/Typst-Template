= Arguments
== Arguments Sinks
#let format(title, ..authors) = {
  let by = authors.pos().join(", ", last: " and ")
  [*#title* \ _Written by #by;_]
}
#format("ArtosFlow", "Jane", "Joe", "John", "Alice")
- 'title' 是必需参数，后面所有的参数都集成到 'authors' 中作为可变参数
- .join(", ", last: " and ")是把数组拼接成字符串, 规则是：普通分隔符：','；最后一个分隔符：'and'


== Spreading
#let array = (2, 3, 5, 10, 4)
#calc.min(..array) \
#let dict = (fill: blue)
#text(..dict)[Hello World!]


== Constructor
#let args = arguments(stroke: red, inset: 1em, [Body])
#box(..args)
#circle(..args, stroke: green, inset: 1.5em) // 同名参数会覆盖


#pagebreak()


= Array
#link("https://typst.app/docs/reference/foundations/array/")[#text(fill:blue, size:24pt)[Array Reference]]

#text(size: 16pt, fill: red)[Note]: An array of length one needs a trailing comma, as in `(1,)`. This is to disambiguate
from a simple parenthesized expressions like `(1 + 2) * 3`. An empty array is written as ().

#let values = (1, 7, 4, -3, 2)
#values.at(0) \
#(values.at(0) = 3) // 修改数组第一个元素为3
#values.at(-1) \
#values \
#values.find(calc.even) \ // 查找第一个偶数
#values.filter(calc.odd) \ // 过滤出所有奇数
#values.map(calc.abs) \
#values.rev() \ // 反转数组
#(1, (2, 3)).flatten() \
#(("A", "B", "C", "D", "E").join(", ", last: " and "))

#let hi = "Hello World!" 
#std.array(bytes(hi)) 

== range
#range(5) \
#range(2, 5) \
#range(20, step: 4) \
#range(21, step: 4) \
#range(5, 2, step: -1)

== enumerate
#for (i, value) in ("A", "B", "C").enumerate() {
  [#i: #value \ ]
}
#("A", "B", "C").enumerate(start: 1)

== fold
#let array = (1, 2, 3, 4, 5, 6)
#array.fold(1, (acc, x) => acc + x)
- The folding function must have two parameters: One for the accumulated value and one for an item.
- The first element of the array as the initial accumulator value, folding every subsequent element into it.

== split
#(1, 1, 2, 3, 2, 4, 5).split(2)

== intersperse
#("A", "B", "C").intersperse("-")
- Returns an array with a copy of the separator value placed between adjacent elements.

== chunks
#let array = (1, 2, 3, 4, 5, 6, 7, 8)
#array.chunks(3) \
#array.chunks(3, exact: true)

== windows
#let array = (1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
#array.windows(5)
- Returns sliding windows of window-size elements over an array.

== sorted
#let array = (
  (a: 2, b: 4),
  (a: 1, b: 5),
  (a: 2, b: 3),
)
#array.sorted(key: it => (it.a, it.b))

== dedup
#(3, 3, 1, 2, 3).dedup()
- Deduplicates all items in the array.

== to-dict
#(
  ("apples", 2),
  ("peaches", 3),
  ("oranges", 5),
  ("apples", 4),
).to-dict()

== reduce
#let array = (2, 1, 4, 3)
#array.reduce((acc, x) => calc.max(acc, x))
- Reduces the elements to a single one, by repeatedly applying a reducing operation.
- For arrays with at least one element, this is the same as `array.fold` .
// #array.fold(0, (acc, x) => calc.max(acc, x)) // 等价上面的 reduce 语句