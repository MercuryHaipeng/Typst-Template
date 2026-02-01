= Writing in Typst
== List
+ 有序列表1
  - Temperature
  - Precipitation
+ 有序列表2
+ 有序列表3
  + 缩进列表1
  + 缩进列表2
    - 第三层缩进
 

== Figure
#image("Figures/09.jpg", width: 50%)

#figure(
  image("Figures/30.jpg", width: 70%),
  caption: [
    This is a _vase_.
  ],
)


Glaciers as the one shown in @giraffe will cease to exist if we don't take action soon!
#figure(
  image("Figures/25.jpg", width: 60%),
  caption: [
    _Giraffe_ form an important part of the earth's climate system.
  ],
) <giraffe>


== Math
The equation $Q = rho A v + C$ defines the glacial flow rate.

The flow rate of a glacier is defined by the following equation:
$ Q = rho A v + C $

The flow rate of a glacier is given by the following equation:
$ Q = rho A v + "time offset" $

Total displaced soil by glacial flow:
$ 7.32 beta + sum_(i=0)^nabla Q_i / 2 $

Total displaced soil by glacial flow:
$ 13.36 beta + sum_(i=0)^nabla (Q_i (a_i - epsilon)) / 2 $

// 列向量
$ v := vec(x_1, x_2, x_3) $

// 符号
$ a arrow.r b $

#text(fill: blue)[
  #link("https://typst.app/docs/reference/symbols/sym/")[
    官网符号参考]
]

#text(fill: red)[
  #link("https://typst.app/docs/reference/visualize/color/")[
    官网颜色参考]
]


== Bibliography
// #set cite(style: "ieee")
// #set cite(style: "apa")
#set cite(style: "gb-7714-2015-numeric")

这是我的第一个参考文献@keRethinkingPositionalEncoding2021。

这是第二个参考文献@Ecarnot2015。

这是多个参考文献@ganGenerativeAdversarialNetworks2025,@raiSurgPoseGeneralisableSurgical2025,@rameshHierarchicalTextconditionalImage2022

#bibliography("ref.bib")




