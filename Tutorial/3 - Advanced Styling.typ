#set page(
  paper: "us-letter",
  header: align(right)[
    A Fluid Dynamic Model for Glacier Flow
  ],
  numbering: "1",
)
#set par(justify: true)
#set text(
  font: "Libertinus Serif",
  size: 14pt,
)

= Writing the right set rules
#lorem(600)
#pagebreak()


// ***********************************
// 设置标题和摘要形式
// ***********************************
// 设置标题样式
#show title: set text(size: 24pt) // 字号
#show title: set align(right)         // 对齐方式
#show title: set block(below: 1.2em) // 标题与正文的距离

#title[
  A Fluid Dynamic Model for Glacier Flow
]

#grid(
  columns: (1fr, 1fr),
  align(center)[
    Therese Tungsten \
    Artos Institute \
    #link("mailto:tung@artos.edu")
  ],
  align(center)[
    Dr. John Doe \
    Artos Institute \
    #link("mailto:doe@artos.edu")
  ],
)

// 设置摘要形式
#align(center)[
  #set par(justify: false, leading: 0.6em) // 左对齐和行间距0.6em
  *Abstract* \
  #lorem(80)
]

#pagebreak()

// ***********************************
// 添加列和列标题
// ***********************************
// 设置文档标题属性
#set document(title: [A Fluid Dynamic Model for Glacier Flow])
#set page(
paper: "us-letter", header: align(
  right + horizon, // 页眉右对齐，垂直居中
  context document.title, // 读取title属性
), 
  numbering: "1", 
  columns: 2, // 双栏显示
)

#place(
  top + center,
  float: true,
  scope: "parent",
  clearance: 2em,
)[
  #title()
  #par(justify: false)[
    *Abstract* \
    #lorem(80)
  ]
  // 使用box可以让摘要内容和标题对齐
  // #box(width: 100%)[
  // #par(justify: true)[
  //   *Abstract* \
  //   #lorem(80)
  //   ]
  // ]
]

#show heading.where(level: 1): set align(center)
#show heading.where(level: 1): set text(
  size: 16pt, 
  weight: "regular" // Typst 默认标题是加粗 (Bold)
  ) 
#show heading.where(level: 1): smallcaps // 小型大写字母
#show heading.where(level: 2): set text(
  size: 14pt,
  weight: "regular", 
  style: "italic",
)
#show heading.where(level: 2): it => {
  it.body + [.]
}

= Introduction
#lorem(100)

= Related Work
#lorem(50)

== Previous Studies

#lorem(100)

== Recent Advances

#lorem(100)