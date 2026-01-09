// 包含自定义的格式
#import "@preview/numbly:0.1.0": numbly
#import "@preview/hydra:0.6.2": hydra

#let conf(
  // title: "My Template",
  // author: "Haipeng Yu",
  // contact: "yhp25@163.com",
  title: none,
  author: none,
  contact: none,
  doc,
) = {
  // 标题格式设置
  set heading(
    numbering: numbly(
      // 行（每一个参数）依次对应一个标题层级,每个位置数字表示要引用的层级的当前数值
      "第{1:一}章",
      "{1}.{2}", // 表示先取出第一级计数，再取出第二级的计数
      // "{1}.{2}.{3}",  // 三级标题显示样式为"x.y.z"
      "{3}", // 三级标题显示样式为"x"
      default: none,
    ),
  )

  // 有序列表序号设置
  set enum(
    full: true,
    body-indent: 0.5em, // 序号和body的间距
    spacing: auto, // 行间距
    indent: 1em, // 缩进
    numbering: numbly(
      "{1:(1)}", // 第1级是括号+数字
      "{2:①}", // 第2级是圆圈+数字
      "{3:a.}", // 第3级是字母+点
      default: none,
    ),
  )

  // 全局字体设置
  set text(
    size: 12pt,
    font: ("New Computer Modern", "STFangsong"),
    lang: "zh",
    region: "cn",
  )

  // 段落设置
  set par(
    leading: 1em, // 行间距
    justify: true, // 两端对齐
    spacing: 1.2em, // 段落间距(默认值1.2em)
    first-line-indent: (
      // 首行缩进
      amount: 2em,
      all: true, // 默认标题下第一段不缩进
    ),
  )

  // 固有属性设置用"set", 个性化设置用"show"
  // 定制标题样式
  show heading.where(level: 1): it => {
    // it指代括号里的1级标题
    set text(
      size: 20pt,
      font: ("Times New Roman", "SimHei"),
      fill: rgb("#ff4136"), // 也可以直接用red
    )
    set align(center)     // 章标题居中, 默认居左
    pagebreak(weak: true) // 每章分页,第1章跳过分页
    it // 相当于输出it
  }
  show heading.where(level: 2): it => {
    set text(
      size: 16pt,
      font: ("Times New Roman", "SimHei"),
      fill: rgb("#0074d9"),
    )
    set align(center)
    // 标题数组的第二个索引取值(即二级标题)大于1才分页
    if counter(heading).get().at(1) > 1 {
      pagebreak()
    }
    it
  }
  show heading.where(level: 3): it => {
    set text(
      size: 14pt,
      font: ("Times New Roman", "SimSun"),
      weight: "regular" // default: "bold"
    )
    set align(left)
    it
  }

  // 定制纸张布局样式
  set page(
    paper: "a4",    // default
    // margin: (left: 2cm, right: 2cm, top: 2cm, bottom: 2cm)
    // margin: ( x:2cm, rest: 3cm),
    margin: 2.5cm,
    footer: context {
      set text(size: 10pt)
      // contact // contact 显示在左下角
      // h(1fr)  // 1fr 表示相对的剩余空间
      // counter(page).display("1")  // 页码被置于右下角
      align(center, counter(page).display("1")) // 只显示页码居中
      },
      header: context {
        set text(10pt)
        if calc.odd(here().page()){
          align(right, hydra(2)) // 奇数页眉居左显示第二级标题
        }
        else {
          align(left, hydra(1)) // 偶数页眉居右显示第一级标题
        }
      }
  )





  doc // 相当于输出文档
}
