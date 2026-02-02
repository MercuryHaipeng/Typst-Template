= Set rules
#set text(
  font: "New Computer Modern",
)
== 设置经典的现代版字体
In the case of glaciers, fluid dynamics principles can be used to understand how the movement and behaviour of the ice
is influenced by factors such as temperature, pressure, and the presence of other fluids (such as water).

#text(font: "Microsoft YaHei UI")[
  == 设置微软雅黑字体
  In the case of glaciers, fluid dynamics principles can be used to understand how the movement and behaviour of the ice
  is influenced by factors such as temperature, pressure, and the presence of the other fluids (such as water).
]

#text(font: "Segoe UI")[
  == 设置其他字体
  In the case of glaciers, fluid dynamics principles can be used to understand how the movement and behaviour of the ice
  is influenced by factors such as temperature, pressure, and the presence of the other fluids (such as water).
]

== 仍然是经典的现代版字体
In the case of glaciers, fluid dynamics principles can be used to understand how the movement and behaviour of the ice
is influenced by factors such as temperature, pressure, and the presence of other fluids (such as water).

#pagebreak()

#set page(
  paper: "a5",
  margin: (x: 1.8cm, y: 1.5cm),
)
#set text(
  font: "New Computer Modern",
  size: 10pt,
)
#set par(
  justify: true,    // True-两端对齐；False-左对齐
  leading: 0.52em,  // 行间距, em表示当前字号大小
)

= Set up the page
== Introduction
In this report, we will explore the various factors that influence fluid dynamics in glaciers and how they contribute to the formation and behaviour of these natural structures.

== 插图
#align(center + top)[
#image("Figures/09.jpg", width: 70%)
  *Some Food*
]

== 链接
#text(fill: blue)[
  #link("https://typst.app/docs/reference/layout/page/#parameters-paper")[
    设置页面规则]
]

#text(fill: blue)[
  #link("https://typst.app/docs/reference/text/text/")[
    设置文本规则]
]

== 长度
Typst supports the following length units:
- 像素 Points: 72pt 
- 毫米 Millimeters: 254mm 
- 厘米 Centimeters: 2.54cm 
- 英寸 Inches: 1in 
- 相对字体大小 Relative to font size: 2.5em

#pagebreak()

// #set heading(numbering: "1.1.a")
// #set heading(numbering: "1.i.1)")
#set heading(numbering: (..nums) => {
  let n = nums.pos()
  if n.len() == 1 {
    return str(n.at(0)) + "."
  } else if n.len() == 2 {
    return str(n.at(0)) + "." + numbering("i", n.at(1))
  } else if n.len() == 3 {
    return str(n.at(0)) + "." + numbering("i", n.at(1)) + "." + str(n.at(2)) + ")"
  } else {
    return nums.pos().map(str).join(".")
  }
})

= Introduction
#lorem(10)

= Background
#lorem(12)

= Methods
== Method one
#lorem(15)
== Method two
#lorem(15)
=== Detail one
#lorem(20)
=== Detail two
#lorem(20)

#pagebreak()

#show "ArtosFlow": name => box[
  #box(image(
    "Figures/25.jpg",
    height: 1em,
  ))
  #name
]

This report is embedded in the ArtosFlow project. ArtosFlow is a project of the Artos Institute.

#let alert(body, fill: orange) = {
  set text(white)
  set align(center)
  rect(
    fill: fill,
    inset: 8pt,
    radius: 4pt,
    [*Warning:\ #body*],
  )
}

#alert[ Danger is imminent! ]

#alert(fill: blue)[ KEEP OFF TRACKS ]

