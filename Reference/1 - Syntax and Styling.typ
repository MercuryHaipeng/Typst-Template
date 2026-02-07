#set text(
  font: "Segoe UI",
  size: 12pt,
)

= Mode
Typst has three syntactical modes: Markup, Math, and Code. Markup mode is the default in a Typst document, math mode lets you write mathematical formulas, and code mode lets you use Typst's scripting features.

I got an ice cream for \$1.50! #emoji.

#let kebab-case = [Using hyphen]
#let _schön = "😊"
#let 始料不及 = "😱"
#let π = calc.pi
#kebab-case
#if -π < 0 { _schön } else { 始料不及 }
/* -π means -1 * π,
  so it's not a valid identifier */

#link("https://typst.app/docs/reference/syntax/#comments")[#text(fill:red)[Explanation of syntax modes]]

== Markup
#table(
  columns: (1fr, 2fr, 1fr),
  inset: 6pt,
  stroke: 0.6pt,

  [*Name*], [*Example*], [*See*],
  [Paragraph break], [Blank line], [parbreak],
  [Strong emphasis], [\*strong\*], [strong],
  [Emphasis], [\_emphasis\_], [emph],
  [Raw text], [\`print(1)\`], [raw],
  [Link], [https://typst.app/], [link],
  [Label], [`<intro>`], [label],
  [Reference], [`@intro`], [ref],
  [Heading], [= Heading], [heading],
  [Bullet list], [- item], [list],
  [Numbered list], [+ item], [enum],
  [Term list], [/ Term: description], [terms],
  [Math], [$x^2$], [Math],
  [Line break], [\\], [linebreak],
  [Smart quote], ['single' or "double"], [smartquote],
  [Symbol shorthand], [`~, ---`], [Symbols],
  [Code expression], [#rect(width: 1cm)], [Scripting],
  [Character escape], [Tweet at us \#ad], [Below],
  [Comment], [`/* block */, // line`], [Below],
)

== Math mode
#table(
  columns: (1.4fr, 2fr, 1fr),
  inset: 8pt,
  stroke: 0.6pt,
  
  [*Name*], [*Example*], [*See*],
  [Inline math], [$x^2$], [Math],
  [Block-level math], [$ x^2 $], [Math],
  [Bottom attachment], [$x_1$], [attach],
  [Top attachment], [$x^2$], [attach],
  [Fraction], [$1 + (a+b)/5$], [frac],
  [Line break], [$x \ y$], [linebreak],
  [Alignment point], [$x &= 2 \ &= 3$], [Math],
  [Variable access], [$\#x$, $pi$], [Math],
  [Field access], [$arrow.r.long$], [Scripting],
  [Implied multiplication], [$x y$], [Math],
  [Symbol shorthand], [$->$, $!=$], [Symbols],
  [Text/string in math], [$a "is natural"$], [Math],
  [Math function call], [$floor(x)$], [Math],
  [Code expression], [$#rect(width: 1cm)$], [Scripting],
  [Character escape], [$x\^2$], [Below],
  [Comment], [`$/* comment */$`], [Below],
)

== Code mode
#table(
  columns: (1.6fr, 2.4fr, 1fr),
  inset: 6pt,
  stroke: 0.6pt,

  [*Name*], [*Example*], [*See*],

  [None], [none], [none],
  [Auto], [auto], [auto],
  [Boolean], [false, true], [bool],
  [Integer], [10, 0xff], [int],
  [Floating-point number], [3.14, 1e5], [float],
  [Length], [2pt, 3mm, 1em, ..], [length],
  [Angle], [90deg, 1rad], [angle],
  [Fraction], [2fr], [fraction],
  [Ratio], [50%], [ratio],
  [String], ["hello"], [str],
  [Label], [`<intro>`], [label],
  [Math], [$x^2$], [Math],
  [Raw text], [`print(1)`], [raw],
  [Variable access], [x], [Scripting],
  [Code block], [{ let x = 1; x + 2 }], [Scripting],
  [Content block], [[*Hello*]], [Scripting],
  [Parenthesized expression], [(1 + 2)], [Scripting],
  [Array], [(1, 2, 3)], [Array],
  [Dictionary], [(a: "hi", b: 2)], [Dictionary],
  [Unary operator], [-x], [Scripting],
  [Binary operator], [x + y], [Scripting],
  [Assignment], [x = 1], [Scripting],
  [Field access], [x.y], [Scripting],
  [Method call], [x.flatten()], [Scripting],
  [Function call], [min(x, y)], [Function],
  [Argument spreading], [min(..nums)], [Arguments],
  [Unnamed function], [(x, y) => x + y], [Function],
  [Let binding], [let x = 1], [Scripting],
  [Named function], [let f(x) = 2 \* x], [Function],
  [Set rule], [set text(14pt)], [Styling],
  [Set-if rule], [set text(..) if ..], [Styling],
  [Show-set rule], [show heading: set block(..)], [Styling],
  [Show rule with function], [show raw: it => {..}], [Styling],
  [Show-everything rule], [show: template], [Styling],
  [Context expression], [context text.lang], [Context],
  [Conditional], [if x == 1 {..} else {..}], [Scripting],
  [For loop], [for x in (1, 2, 3) {..}], [Scripting],
  [While loop], [while x < 10 {..}], [Scripting],
  [Loop control flow], [break, continue], [Scripting],
  [Return from function], [return x], [Function],
  [Include module], [include "bar.typ"], [Scripting],
  [Import module], [import "bar.typ"], [Scripting],
  [Import items from module], [import "bar.typ": a, b, c], [Scripting],
  [Comment], [`/* block */`, `// line`], [Below],
)


= Paths
+ Typst has various features that require a file path to reference external resources such as images, Typst files, or data files. Paths are represented as strings. There are two kinds of paths: Relative and absolute.
  - A relative path searches from the location of the Typst file where the feature is invoked. It is the default. (相对路径从调用该功能的 Typst 文件位置进行搜索。)
  - An absolute path searches from the root of the project. It starts with a leading /. (绝对路径从项目根源开始搜索。)
+ By default, the project root is the parent directory of the main Typst file. For security reasons, you cannot read any files outside the root directory. (默认情况下，项目根节点是主 Typst 文件的父目录。出于安全考虑，不能读取根目录以外的任何文件。)
+ In the web app, the project itself is the root directory. You can always read all files within it, no matter which one is previewed (via the eye toggle next to each Typst file in the file panel). (在网页应用中，项目本身就是根目录。无论预览哪个文件，你都可以读取其中的所有文件（通过文件面板中每个 Typst 文件旁边的眼睛开关）。)


#set heading(level: 1, numbering: "I.")
#set text(
  font: "New Computer Modern",
)
= Styling
#set heading(level: 2, numbering: "I.1")
== Set rules
#set heading(level: 3, numbering: "I.1.a")
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


// #set heading(numbering: "(I)")
// #show heading: set align(center)
// #show heading: set text(font: "Inria Serif")
// #show heading: it => block[
//   \~
//   #emph(it.body)
//   #counter(heading).display(it.numbering)
//   \~
// ]
// = Dragon
// With a base health of 15, the dragon is the most powerful creature.
// = Manticore
// While less powerful than the dragon, the manticore gets extra style points.


#show "Project": smallcaps
#show "badly": "great"
We started Project in 2019 and are still working on it. Project is progressing badly.