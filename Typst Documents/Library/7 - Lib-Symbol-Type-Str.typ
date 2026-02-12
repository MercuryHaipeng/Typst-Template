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

A Typst file is of type #type(image("7 - Lib-Symbol-Type-Str.typ")).

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


= String
#"hello world!" \
#"\"hello\n  world\"!" \
#"1 2 3".split() \
#"1,2;3".split(regex("[,;]")) \
#(regex("\\d+") in "ten euros") \
#(regex("\\d+") in "10 euros")

#str(10) \
#str(4000, base: 16) \ // 以十六进制格式化
#str(2.7) \
#str(1e8) \
#str(<intro>)

== to-unicode
#"a".to-unicode() \
#("a\u{0300}".codepoints().map(str.to-unicode)) // "a"和"\u{0300}"两个字符的序列按 Unicode 码位分割

== from-unicode
#str.from-unicode(97)

== normalize
#assert.eq("é".normalize(form: "nfd"), "e\u{0301}")
#assert.eq("ſ́".normalize(form: "nfkc"), "ś")
/*
"nfc": Canonical composition where e.g. accented letters are turned into a single Unicode codepoint. 规范合成，例如将带重音符号的字母转换为单一的 Unicode 码
"nfd": Canonical decomposition where e.g. accented letters are split into a separate base and diacritic. 典型分解，例如将带重音符号的字母拆分为独立的基底和变音符号
"nfkc": Like NFC, but using the Unicode compatibility decompositions. 类似 NFC，但使用 Unicode 兼容分解
"nfkd": Like NFD, but using the Unicode compatibility decompositions. 类似 NFD，但使用 Unicode 兼容性分解
*/

== match
#let pat = regex("not (a|an) (apple|cat)")
#"I'm a doctor, not an apple.".match(pat) \
#"I am not a cat!".match(pat)

#assert.eq("Is there a".match("for this?"), none) \ // 如果能匹配就返回捕捉对象，否则返回None
#"The time of my life.".match(regex("[mit]+e")) \ // 包含'm', 'i', 't'，且出现一次或多次'e'
#"The time of my life.".match(regex("[mit]+e")).text
