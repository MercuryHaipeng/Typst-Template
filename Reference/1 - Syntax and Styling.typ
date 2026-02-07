#set text(
  font: "Segoe UI",
  size: 12pt,
)

= Mode
Typst has three syntactical modes: Markup, math, and code. Markup mode is the default in a Typst document, math mode lets you write mathematical formulas, and code mode lets you use Typst's scripting features.

I got an ice cream for \$1.50! #emoji.boy

#let kebab-case = [Using hyphen]
#let _schön = "😊"
#let 始料不及 = "😱"
#let π = calc.pi
#kebab-case
#if -π < 0 { _schön } else { 始料不及 }
/* -π means -1 * π,
  so it's not a valid identifier */

#link("https://typst.app/docs/reference/syntax/#comments")[#text(fill:red)[Explanation of syntax modes]]

= Paths
+ Typst has various features that require a file path to reference external resources such as images, Typst files, or data files. Paths are represented as strings. There are two kinds of paths: Relative and absolute.
  - A relative path searches from the location of the Typst file where the feature is invoked. It is the default. (相对路径从调用该功能的 Typst 文件位置进行搜索。)
  - An absolute path searches from the root of the project. It starts with a leading /. (绝对路径从项目根源开始搜索。)
+ By default, the project root is the parent directory of the main Typst file. For security reasons, you cannot read any files outside the root directory. (默认情况下，项目根节点是主 Typst 文件的父目录。出于安全考虑，不能读取根目录以外的任何文件。)
+ In the web app, the project itself is the root directory. You can always read all files within it, no matter which one is previewed (via the eye toggle next to each Typst file in the file panel). (在网页应用中，项目本身就是根目录。无论预览哪个文件，你都可以读取其中的所有文件（通过文件面板中每个 Typst 文件旁边的眼睛开关）。)

= Styling
== Set rules
#set heading(level:3,numbering: "I.")
#set text(
  font: "New Computer Modern",
)
=== Introduction
With set rules, you can style your document.
 
// 顶层规则会保持有效到文件结束。嵌套在中括号内时，效果持续到中括号结束。
  This list is affected: #[
    #set list(marker: [--])
    - Dash
  ]

 This one is not:
 - Bullet
   
   // 有条件地应用，可以使用if
   #let task(body, critical: false) = {
     set text(red) if critical
     [- #body]
   }
   #task(critical: true)[Food today?]
   #task(critical: false)[Work deadline]
   

#show heading: set text(navy)
=== This is navy-blue
But this stays black.


#set heading(numbering: "(I)")
#show heading: set align(center)
#show heading: set text(font: "Inria Serif")
#show heading: it => block[
  \~
  #emph(it.body)
  #counter(heading).display(it.numbering)
  \~
]
= Dragon
With a base health of 15, the dragon is the most powerful creature.
= Manticore
While less powerful than the dragon, the manticore gets extra style points.


#show "Project": smallcaps
#show "badly": "great"
We started Project in 2019 and are still working on it. Project is progressing badly.