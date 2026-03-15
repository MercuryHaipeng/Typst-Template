= Datetime
#link("https://typst.app/docs/reference/foundations/datetime/")[#text(fill:blue, size:16pt)[Link to Datetime Reference]]

#let date = datetime(
  year: 2026,
  month: 2,
  day: 9,
)

#date.display() \
#date.display(
  "y:[year repr:last_two]", // two digit year
)

#let time = datetime(
  hour: 18,
  minute: 2,
  second: 23,
)

#time.display() \
#time.display(
  "h:[hour repr:12][period]", // 12 hour format with AM/PM
  // "h:[hour repr:24]",  // 24 hour format
)

== Datetime and Duration
#let first-of-march = datetime(day: 1, month: 3, year: 2026)
#let first-of-jan = datetime(day: 1, month: 1, year: 2026)
#let distance = first-of-march - first-of-jan
#distance.hours() \
#distance.days() \

#let date = datetime(day: 9, month: 2, year: 2026)
#let two-days = duration(days: 2)
#let two-days-earlier = date - two-days
#let two-days-later = date + two-days
#date.display() \
#two-days-earlier.display() \
#two-days-later.display()

== Definitions
Today's date is #datetime.today().display().

== Duration
#duration(
  days: 3,
  hours: 12,
).hours()


= Decimal
Decimal: #(decimal("0.1") + decimal("0.2")) \
Float: #(0.1 + 0.2)


= Dictionary
#let dict = (
  name: "Typst",
  born: 2019,
)
#dict.name \
#(dict.launch = 20)
#dict.len() \
#dict.keys() \
#dict.values() \
#dict.at("born") \
#dict.insert("city", "Berlin")
#dict \
#("name" in dict)

#dictionary(sys).at("version")

This is an empty list: #() \ 
This is an empty dict: #(:)

= Eval
#eval("1 + 1") \
#eval("(1, 2, 3, 4)").len() \
#eval("*Markup!*", mode: "markup") \

#eval("= Heading", mode: "markup")
#eval("1_2^3", mode: "math")

#eval("x + 1", scope: (x: 2)) \
#eval(
  "abc/xyz",
  mode: "math",
  scope: (
    abc: $a + b + c$,
    xyz: $x + y + z$,
  ),
)

