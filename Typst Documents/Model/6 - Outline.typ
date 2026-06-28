#set heading(numbering: "1.")
#outline()

= Introduction
#lorem(5)

= Methods
== Setup
#lorem(10)

#pagebreak()

// Styling the outline
#show outline.entry.where(
  level: 1,
): set block(above: 2em)
#outline()

= About ACME Corp.
== History
=== Origins
= Products
== ACME Tools

#pagebreak()

#show outline.entry: it => link(
  it.element.location(),
  // it.indented(it.prefix(), it.inner()),  
  /* Keep just the body, dropping the fill and the page. */
  it.indented(it.prefix(), it.body()),
)

#outline()
= About ACME Corp.
== History

/* Parameters */
#pagebreak()
// 目录的默认显示规则
#show outline.entry: it => link(
  it.element.location(),
  it.indented(it.prefix(), it.inner()),
)

// Alternative outlines
#outline(
  title: [List of Figures],
  target: figure.where(kind: image),
)

// target
#outline(
  title: [List of Tables],
  target: figure.where(kind: table),
)

#figure(
  image("../Tutorial/Figures/25.jpg", width: 70%),
  caption: [A nice figure!],
)

#figure(
  table(
    columns: 4,
    [t], [1], [2], [3],
    [y], [0.3], [0.7], [0.5],
  ),
  caption: [Experiment results],
)

#pagebreak()

// depth
#set heading(numbering: "1.")
#outline(depth: 1)

= Yes
Top-level section.
== Still
Subsection.
=== Nope
Not included.

#pagebreak()

#set heading(numbering: "I-I.") // 以罗马数字编号
#set outline(title: none) // 不显示目录标题
#set outline.entry(fill: line(length: 100%)) // 标题和页码之间的空隙

#line(length: 100%)
#outline(indent: 3em) // 设置缩进

= Software engineering technologies
== Requirements
== Tools and technologies
=== Code editors
== Analyzing alternatives
= Designing software components
= Testing and integration
