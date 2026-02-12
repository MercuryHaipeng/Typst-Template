= Reusing data with variables
#let ipa = text(
  style: "italic",
)[/taɪpst/]

The canonical way to pronounce Typst is #ipa.

#table(
  columns: (1fr, 1fr),
  [Name], [Typst],
  [Pronunciation], ipa,
)

// 变量
// Content with markup inside
#let blind-text = [_Lorem ipsum_ dolor sit amet]

// Unformatted strings
#let funny-font = "MS Comic Sans"

// Absolute lengths (see also pt, in, ...)
#let mile = 160934cm

// Lengths relative to the font size
#let double-space = 2em

// Ratios
#let progress = 80%

// Integer numbers
#let answer = 42

// Booleans
#let truth = false

// Horizontal and vertical alignment
#let focus = center

= A toy template
#let amazed(term) = box[✨ #term ✨]
You are #amazed[beautiful]!

#let amazed(term, color: blue) = {
  text(color, box[✨ #term ✨])
}
You are #amazed[beautiful]! I am #amazed(color: purple)[amazed]!

// 这句调用会改变后面所有的格式
// #show: amazed
I choose to focus on the good in my life and let go of any negative thoughts or beliefs. In fact, I am amazing!

= Embedding set and show rules
// #let template(doc) = [
//   #set text(font: "Inria Serif")
//   #show "something cool": [Typst]
//   #doc
// ]
// #show: template
// I am learning something cool today. It's going great so far!


// #let conf(title, doc) = {
//   set page(
//     paper: "us-letter",
//     header: align(
//       right + horizon,
//       title
//     ),
//     columns: 2,
//    )
//   set par(justify: true)
//   set text(
//     font: "Libertinus Serif",
//     size: 11pt,
//   )

//   // Heading show rules.

//   doc
// }

// #show: doc => conf(
//   [Paper title],
//   doc,
// )

// = Introduction
// #lorem(100)
// = Related Work
// #lorem(50)
// == Previous Studies
// #lorem(100)
// == Recent Advances
// #lorem(100)

#pagebreak()

/* 调用模板文件 */
// 以下命名为conf.typ
#let conf(
  authors: (),
  abstract: [],
  doc,
) = {
  // Set and show rules from before.
  place(
    top + center,
    float: true,
    scope: "parent",
    clearance: 2em,
    {
      title()

      let count = authors.len()
      let ncols = calc.min(count, 3)
      grid(
        columns: (1fr,) * ncols,
        row-gutter: 24pt,
        ..authors.map(author => [
          #author.name \
          #author.affiliation \
          #link("mailto:" + author.email)
        ]),
      )

      par(justify: false)[
        *Abstract* \
        #abstract
      ]

    }
  )

  doc
}
/******************************************************/
// #import "conf.typ": conf

#set document(title: [
  A Fluid Dynamic Model for Glacier Flow
])

#show: conf.with(
  authors: (
    (
      name: "Theresa Tungsten",
      affiliation: "Artos Institute",
      email: "tung@artos.edu",
    ),
    (
      name: "Eugene Deklan",
      affiliation: "Honduras State",
      email: "e.deklan@hstate.hn",
    ),
  ),
  abstract: lorem(80),
)

= Introduction
#lorem(90)

== Motivation
#lorem(140)

== Problem Statement
#lorem(50)

= Related Work
#lorem(200)