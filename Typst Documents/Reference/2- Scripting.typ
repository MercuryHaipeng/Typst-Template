= Expressions
#emph[Hello] \
#emoji.face \
#"hello".len()\
#("Length of 'hello' is " + str("hello".len()))

= Blocks
- Code block: {let x = 1; x + 2;}
- Content block: [*Hey* there!]
#{
  let a = [from]
  let b = [*world*]
  [hello ]
  a + [ the ] + b
}


= Bindings
#let name = "Typst"
This is #name's documentation. It explains #name.

#let my-add(x, y) = x + y
Sum is #my-add(2, 3).

#let (x, y) = (1, 2)
The coordinates are #x, #y.

#let (a, .., b) = (1, 2, 3, 4)
The first element is #a. The last element is #b.

#let books = (
  Shakespeare: "Hamlet",  // 莎士比亚 《哈姆雷特》
  Homer: "The Odyssey", // 荷马 《奥德赛》
  Austen: "Persuasion", // 简·奥斯汀 《劝导》
)

#let (Austen,) = books
Austen wrote #Austen.

#let (Homer: h) = books
Homer wrote #h.

//单独取出 books.Homer, 再把剩余所有键值对放进新字典 other
#let (Homer, ..other) = books 
#for (author, title) in other [
  #author wrote #title.
]

#let (_, y, _) = (1, 2, 3)
The y coordinate is #y.

#let left = (2, 4, 5)
#let right = (3, 2, 6)
#(left.zip(right)
      .map(((a, b)) => a + b,)
)

#{
  let a = 1
  let b = 2
  (a, b) = (b, a)
  [a = #a, b = #b]
}


= Conditionals
#if 1 < 2 [
  This is shown
] else [
  This is not.
]
/*
- if condition {..}
- if condition [..]
- if condition [..] else {..}
- if condition [..] else if condition {..} else [..]
*/


= Loops
#for c in "ABC" [
  #c is a letter.\
]

#let n = 2
#while n < 10 {
  n = (n*2) - 1
  (n,)
}
/*
for .. in collection {..}
for .. in collection [..]
while condition {..}
while condition [..]
*/


= Fields
#let it = [= Heading]
#it.body \
#it.depth \
#it.fields()

#let dict = (greet: "Hello")
#dict.greet \
#emoji.school


= Methods
#let values = (1, 2, 3, 4)
#values.pop() \
#values.len() \

#("a, b, c".split(", ").join[ --- ])

#"abc".len() is the same as #str.len("abc")


= Modules
```typst
 - Including: #include "bar.typ" // 插入文件内容
 - Import: #import "bar.typ"  // 导入模块
 - Import items: #import "bar.typ": a, b, c  // 从模块中导入指定项
```

= Packages
#import "@preview/example:0.1.0": add
#add(2, 7)

#link("https://typst.app/universe/search/?kind=packages")[#text(fill:blue)[Typst Universe]]


= Operators
#table(
  align:(center, auto, center, center),
  columns: (auto, auto, auto, auto),
  inset: 6pt,
  stroke: 0.6pt,

  [*Operator*], [*Effect*], [*Arity*], [*Precedence*],
  [-], [Negation], [Unary], [7],
  [+], [No effect (exists for symmetry)], [Unary], [7],
  [\*], [Multiplication], [Binary], [6],
  [/], [Division], [Binary], [6],
  [+], [Addition], [Binary], [5],
  [-], [Subtraction], [Binary], [5],
  [==], [Check equality], [Binary], [4],
  [!=], [Check inequality], [Binary], [4],
  [<], [Check less-than], [Binary], [4],
  [<=], [Check less-than or equal], [Binary], [4],
  [>], [Check greater-than], [Binary], [4],
  [>=], [Check greater-than or equal], [Binary], [4],
  [in], [Check if in collection], [Binary], [4],
  [not in], [Check if not in collection], [Binary], [4],
  [not], [Logical "not"], [Unary], [3],
  [and], [Short-circuiting logical "and"], [Binary], [3],
  [or], [Short-circuiting logical "or"], [Binary], [2],
  [=], [Assignment], [Binary], [1],
  [+=], [Add-Assignment], [Binary], [1],
  [-=], [Subtraction-Assignment], [Binary], [1],
  [\*=], [Multiplication-Assignment], [Binary], [1],
  [/=], [Division-Assignment], [Binary], [1],
)
