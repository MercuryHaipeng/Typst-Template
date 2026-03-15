= Heading
// Supplement: 标题的补充
#set heading(numbering: "1.", supplement: [Chapter])
= Introduction <intro>
In @intro, we see how to turn Sections into Chapters. And in @intro[Part], it is done manually.

// Outline: 如果设置为 true，则该标题在导出后的 PDF 大纲中也会作为书签显示。
#outline()
#heading[Normal]
This is a normal heading.

#heading(outlined: false)[Hidden]
This heading does not appear in the outline.

// Bookmarked: 标题是否作为书签出现在PDF大纲中。不会影响其他导出格式.
#heading[Normal heading]
This heading will be shown in the PDF's bookmark outline.

#heading(bookmarked: false)[Not bookmarked]
This heading won't be bookmarked in the resulting PDF.

// Offset
= Level 1
#set heading(offset: 1, numbering: "1.1")
= Level 2
#heading(offset: 2, depth: 2)[
  I'm level 4
]

// Level: 标题的绝对嵌套深度从一开始。如果设置为auto，则根据偏移量+深度计算
#show heading.where(level: 2): set text(red)
= Level 1
== Level 2

#set heading(offset: 1)
= Also level 2
== Level 3
