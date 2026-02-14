= Bibliography
/* Style
Engineering, IT: "ieee"
Psychology, Life Sciences: "apa"
Social sciences: "chicago-author-date"
Humanities: "mla", "chicago-notes", "harvard-cite-them-right"
Economics: "harvard-cite-them-right"
Physics: "american-physics-society"
"gb-7714-2015-numeric": China National Standard GB/T 7714-2015 
*/
This was already noted by pirates long ago. @zhangSurveyVisualMamba2024 @dongEnhancedRealtimeHuman2024

Multiple sources say ... . @zhangSegmentAnythingModel2024 @xuGeneralizable3DFramework2025

#bibliography("../Tutorial/ref.bib", style: "apa")

#pagebreak()

= List
`list(
  tight: bool,  // Default: true
  marker: contentarrayfunction, // Default: ([•], [‣], [-]) 
  indent: length, // Default: 0pt
  body-indent: length,  // Default: 0.5em
  spacing: autolength, ..content,
) -> content`

Normal list.
- Text
- Math
- Layout
- ...

Multiple lines.
- This list item spans multiple lines because it is indented.

Function call.
#list(
  [Foundations],
  [Calculate],
  [Construct],
  [Data Loading],
)

#set list(marker: [---])
- A more classic list
- With en-dashes

#set list(marker: ([•], [--]))
- Top-level
  - Nested
  - Items
- Items

#for letter in "ABC" [
  - Letter #letter
]

#pagebreak()

= Cite
`cite(
  label,
  supplement: nonecontent,
  form: nonestr,
  style: autostrbytes,
  ) -> content`

This was already noted by pirates long ago. @tingMaterialClassificationEmbedded2024

Multiple sources say ... @Ecarnot2015 @Wang2025

You can also call `cite` explicitly. #cite(<rombachHighresolutionImageSynthesis2022>)

// #bibliography("../Tutorial/ref.bib", style: "ieee")  // multiple bibliographies are not yet supportedtypst


// 以下三种方式等价
@TianY.L2022 \
#cite(<TianY.L2022>) \
#cite(label("TianY.L2022"))

This has been proven. @raiSurgPoseGeneralisableSurgical2025[p.~7-10]

/*
"normal": Display in the standard way for the active style.
"prose": Produces a citation that is suitable for inclusion in a sentence.
"full": Mimics a bibliography entry, with full information about the cited work.
"author: Shows only the cited work's author(s).
"year: Shows only the cited work's year.
*/
#cite(<keRethinkingPositionalEncoding2021>, form: "prose")
show the outsized effects of pirate life on the human psyche

#pagebreak()

= Document
`document(
title: nonecontent, 
author: strarray, 
description: nonecontent, 
keywords: strarray, 
date: noneautodatetime,
) -> content`

#set document(title: [Hello])
This has no visible output, but embeds metadata into the PDF!

= Emph
This is _emphasized._ \
This is #emph[too.]

#show emph: it => {
  text(red, it.body)
}

This is _emphasized_ differently.