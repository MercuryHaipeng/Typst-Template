= Figure
== Exapmles

@food shows some food. There are many different types.
#figure(
  image("../Tutorial/Figures/09.jpg", width: 80%),
  caption: [A curious figure.],
) <food>

#figure(
  table(
    columns: 4,
    [t], [1], [2], [3],
    [y], [0.3s], [0.4s], [0.8s],
  ),
  caption: [Timing results],
)

== Caption customization
#show figure.caption: emph
#figure(
  rect[Hello],
  caption: [I am emphasized!],
)

// 将说明文字置于表格之上，而其他类型的图形则保留在下方
#show figure.where(
  kind: table,
): set figure.caption(position: top)
#figure(
  table(columns: 2)[A][B][C][D],
  caption: [I'm up here],
)

== Paramters
`figure(
  content, 
  alt: nonestr, 
  placement: noneautoalignment, 
  scope: str, 
  caption: nonecontent, 
  kind: autostrfunction,
  supplement: noneautocontentfunction, 
  numbering: nonestrfunction, 
  gap: length, 
  outlined: bool, 
) -> content`

#set page(height: 300pt)
#show figure: set place(
  clearance: 1em,
)
= Introduction
#figure(
  placement: bottom,
  caption: [A glacier],
  image("../Tutorial/Figures/25.jpg", width: 40%),
)
#lorem(60)


#set page(height: 400pt, columns: 2)
= Introduction
#figure(
  placement: bottom,
  scope: "parent", // 内容跨越所有列; column 插入当前列(default)
  caption: [A vase],
  image("../Tutorial/Figures/30.jpg", width: 60%),
)
#lorem(50)


#figure(
  [The contents of my figure!],
  caption: [My custom figure],
  supplement: [Bar],  // 手动指定编号前缀，默认 figure
  kind: "foo",  // 自定义编号类别 foo，不与 figure 共用编号
)


// lang 和 script 的结合决定了字体功能（如字形替换）的实现方式。
#set text(
  font: "Libertinus Serif",
  size: 20pt,
)
#let scedilla = [Ş]
#scedilla // S with a cedilla

#set text(lang: "ro", script: "latn")
#scedilla // S with a subscript comma

#set text(lang: "ro", script: "grek")
#scedilla // S with a cedilla

#pagebreak()

// 是否用连字符来改善换行
#set page(width: 490pt, height: auto, columns:1)
#set par(justify: true)
This text illustrates how enabling hyphenation can improve justification.

#set text(hyphenate: false)
This text illustrates how enabling hyphenation can improve justification.


/* 在排版文本时，各种选择的“代价”。值越大，选择的频率越低。
hyphenation: splitting a word across multiple lines 
runt: ending a paragraph with a line with a single word 
widow: leaving a single line of paragraph on the next page 
orphan: leaving single line of paragraph on the previous page 
*/
#set text(hyphenate: true, size: 18.4pt)
#set par(justify: true)
#lorem(10)

// Set hyphenation to ten times the normal cost.
#set text(costs: (hyphenation: 1000%))
#lorem(10)


//是否应用字距调整。启用时，特定字母配对会更靠近或更远，获得更美观的效果。
#set text(size: 25pt)
Totally

#set text(kerning: false)
Totally


// 是否应用风格替代字体
#set text(
  font: "IBM Plex Sans",
  size: 20pt,
)
0, a, g, ß

#set text(alternates: true)
0, a, g, ß


// Whether standard ligatures are active. 标准连字是否有效
#set text(size: 20pt)
A fine ligature.

#set text(ligatures: false)
A fine ligature.


/* 选择哪种数字/数值。设置为自动时，将使用默认的数字字体
"lining": Numbers that fit well with capital text (the OpenType lnum font feature). 与大写文本相符的数字（OpenType lnum 字体特征）
"old-style": Numbers that fit well into a flow of upper- and lowercase text (the OpenType onum font feature). 适合融入大小写文本流中的数字（OpenType onum 字体特性）
*/
#set text(font: "Microsoft YaHei", 20pt)
#set text(number-type: "lining")
Number 9.

#set text(number-type: "old-style")
Number 9.


/* The width of numbers / figures. When set to auto, the default numbers for the font are used.
"proportional": Numbers with glyph-specific widths (the OpenType pnum font feature). 具有特定字形宽度的数字（OpenType pnum 字体特征）
"tabular": Numbers of equal width (the OpenType tnum font feature).
等宽数字（OpenType tnum 字体特征）
*/
#set text(font: "Arial", 20pt)
#set text(number-width: "proportional")
A 12 B 34. \
A 56 B 78.

#set text(number-width: "tabular")
A 12 B 34. \
A 56 B 78.


// 是否在零字符中划一条斜线。设置为“true”可启用 OpenType 零字体功能。
0, #text(slashed-zero: true)[0]

// 是否将数字转换为分数。设置为“true”可启用 OpenType 分数字体功能。
1/2 \
#text(fractions: true)[1/2]


// Raw OpenType features to apply. 应用的原始 OpenType 功能。
// Enable the `frac` feature manually.
#set text(features: ("frac",))
1/2 

#set text(font: "Cambria Math")
=>
// Disable the contextual alternates (`calt`) feature. 关闭上下文替换功能
#set text(features: (calt: 0))
=>