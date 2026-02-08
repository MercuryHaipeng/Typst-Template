= Style context
#set text(lang: "de")
#context text.lang // 默认是 "en"

#let value = context text.lang
#value
#set text(lang: "de")
#value
#set text(lang: "fr")
#value


= Location context

#set heading(numbering: "1.")
= Introduction
#lorem(5)
#context counter(heading).get()
= Background
#lorem(5)
#context counter(heading).get()

#set heading(numbering: "I.")
Background is at: \ #context locate(<back>).position()
= Introduction <intro>
#lorem(5)
#pagebreak()
= Background <back>
#lorem(5)
#lorem(5)
#context [
  #counter(heading).get() \
  #counter(heading).at(here()) \
  #counter(heading).at(<intro>)
]


= Nested contexts 嵌套上下文
/* 
定义foo(), 作用是将当前文字大小的相对长度转换为绝对长度.
text.size 表示当前文字大小，是绝对长度，所以 foo() 返回的值总是等于 text.size.
*/
#let foo() = 1em.to-absolute() 
#context {
  foo() == text.size
}

#set text(lang: "de")
#context [
  #set text(lang: "fr")
  #text.lang \
  #context text.lang
]

// 模板里的 set 只影响模板渲染的内容，不会修改外层上下文。
#let template(body) = {
  set text(lang: "fr")
  upper(body) // 把模板内容全部转成大写
}
#set text(lang: "de")
#context [
  #show: template // 用 template 渲染接下来出现的内容
  #text.lang \
  #context text.lang
]

#let c = counter("mycounter")
#c.update(1)
#context [
  #c.update(2)
  #c.display() \
  #context c.display()
]


= Compiler iterations
To resolve contextual interactions, the Typst compiler processes your document multiple times. For instance, to resolve a locate call, Typst first provides a placeholder position, layouts your document and then recompiles with the known position from the finished layout. The same approach is taken to resolve counters, states, and queries. 

In certain cases, Typst may even need more than two iterations to resolve everything. If Typst cannot resolve everything within five attempts, it will stop and output the warning "layout did not converge within 5 attempts."