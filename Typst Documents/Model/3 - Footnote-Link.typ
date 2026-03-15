= Footnote
Check the docs for more details.
#footnote[https://typst.app/docs]

// By giving a label to a footnote, you can have multiple references to it.
You can edit Typst documents online. #footnote[https://typst.app/app] <fn>
Checkout Typst's website. @fn And the online app. #footnote(<fn>)

// How to number footnotes.
#set footnote(numbering: "*")
Footnotes: #footnote[Star], #footnote[Dagger]

// 注意：脚注条目的属性必须在每次页面连续输出中保持一致（页面连续输出是指在没有明确分页符的情况下连续出现的页面序列）。因此，设置和显示脚注条目的规则应在任何页面内容之前定义，通常是在文档开头。
#set footnote(numbering: "1")
#show footnote.entry: set text(red)
My footnote listing #footnote[It's down here] has red text!

#pagebreak()

// The footnote for this entry. Its location can be used to determine the footnote counter state.
#show footnote.entry: it => {
  set text(black)
  let loc = it.note.location()
  numbering(
    "1: ",  // 更改脚注显示样式
    ..counter(footnote).at(loc), // 查询“在正文位置”脚注计数器的值
  )
  it.note.body
}
Customized #footnote[Hello] listing #footnote[World! 🌏]

#pagebreak()

// 修改文件正文与脚注列表之间的分隔符
#set footnote.entry(
  separator: repeat[.],
)
Testing a different separator.
#footnote[
  Unconventional, but maybe not that bad?
]


= Link
#show link: underline
https://example.com

#link("https://example.com") \
#link("https://example.com")[ See example.com ]

== Introduction <intro>
#link("mailto:hello@typst.app") \
#link(<intro>)[Go to intro] \
#link((page: 1, x: 0pt, y: 0pt))[
  Go to top
]