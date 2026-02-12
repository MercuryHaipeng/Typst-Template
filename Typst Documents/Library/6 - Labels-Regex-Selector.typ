= Labels
#show <a>: set text(blue)
#show label("b"): set text(red) 
== Heading <a>
*Strong* #label("b")  // 两种引用标签方式等价

// <a> 会结束标题，因此标签附着在标题本身；而 #label("b") 是标题内容的一部分，因此标签附着在标题的文本上。
// Equivalent to `#heading[Introduction] <a>`.
= Introduction <a>
// Equivalent to `#heading[Conclusion #label("b")]`.
= Conclusion #label("b")

#pagebreak()

= Module

// Examples:
// #import "utils.typ"
// #utils.add(2, 5)
// #import utils: sub
// #sub(1, 4)

// std 是 Typst 的标准库模块（standard library），里面包含：函数(如 table, grid, heading), 类型, 子模块等
#("table" in std) \
#("nope" in std)

= None
// A value that indicates the absence of any other value. 
// The none type has exactly one value: none. 
// When inserted into the document, it is not visible. This is also the value that is produced by empty code blocks. It can be joined with any value, yielding the other value. 
Not visible: #none

= Panic
`Fails with an error. Arguments are displayed to the user (not rendered in the document) as strings, converting with repr if necessary.
/* #panic("This is wrong") */ 
Uncommenting this line will cause an error when compiling the document`

= Regex
#link("https://docs.rs/regex/latest/regex/#syntax")[#text(fill: blue)[A specification of the supported syntax]]

// Works with string methods.
#"a,b;c".split(regex("[,;]"))

// Works with show rules.
#show regex("\\d+"): set text(red)
The numbers 1 to 10.

= Repr 
- Returns the string representation of a value
#none vs #repr(none) \
#"hello" vs #repr("hello") \
#(1, 2) vs #repr((1, 2)) \
#[*Hi*] vs #repr([*Hi*])

#assert(2pt / 3 < 0.67pt)
#repr(2pt / 3) 

#repr(x => x + 1)

#pagebreak()


= Selector
#context query(
  heading.where(level: 1).or(heading.where(level: 2)),
) // This will select all level 1 and level 2 headings in the document.

= This will be found
== So will this
=== But this will not.
