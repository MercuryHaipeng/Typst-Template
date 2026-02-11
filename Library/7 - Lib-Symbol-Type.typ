= Standard Library
#let par = [My special paragraph.]
#let special(text) = {
  set std.text(style: "italic")
  set std.par.line(numbering: "1")
  text
}
#special(par)

#lorem(10)

== Conditional access
`#let tiling = if "tiling" in std { tiling } else { pattern }`


= Symbol
#sym.arrow.r \
#sym.gt.eq.not \
$gt.eq.not$ \
#emoji.face.halo

$arrow.l$ \
$arrow.r$ \
$arrow.t.quad$

#let envelope = symbol(
  "🖂",
  ("stamped", "🖃"),
  ("stamped.pen", "🖆"),
  ("lightning", "🖄"),
  ("fly", "🖅"),
)
#envelope
#envelope.stamped
#envelope.stamped.pen
#envelope.lightning
#envelope.fly


= System
#sys.version \
#sys.inputs


= Type
#let x = 10
#if type(x) == int [
  #x is an integer!
] else [
  #x is another value...
]

A Typst file is of type #type(image("7 - Lib-Symbol-Type.typ")).

#type(12) \
#type(14.7) \
#type("hello") \
#type(<glacier>) \
#type([Hi]) \
#type(x => x + 1) \
#type(type)

= Version
- A version with an arbitrary number of components. 
- The first three components have names that can be used as fields: major, minor, patch. All following components do not have names.
#version() \
#version(1) \
#version(1, 2, 3, 4) \
#version((1, 2, 3, 4)) \
#version((1, 2), 3)

Current version: #sys.version \
#(sys.version >= version(0, 14, 0)) \
#(version(3, 2, 0) > version(4, 1, 0))
