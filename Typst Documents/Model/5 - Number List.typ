= Enum
Automatically numbered:
+ Preparations
+ Analysis
+ Conclusions

Manually numbered:
2. What is the first step?
10. I am confused.
+  Moving on ...

Multiple lines:
+ This enum item has multiple
  lines because the next line
  is as long as the width of this page and indented.

Function call.
#enum[First][Second]

// 切换所有枚举到不同的编号样式
#set enum(numbering: "a)")
+ Starting off ...
+ Don't forget step two

// 自定义枚举中每个项目的数量
#enum(
  enum.item(1)[First step],
  enum.item(5)[Fifth step],
  enum.item(53)[Fifty-third step],
  enum.item(702)[The last step],
)

#pagebreak()

// Numbering: 编号枚举
#enum(
 start: 3,
 [Skipping],
 [Ahead],
)

#set enum(numbering: "1.a)")
+ Different
+ Numbering
  + Nested
  + Items
+ Style

#set enum(numbering: n => super[#n])
+ Superscript
+ Numbering!

// Full: 是否显示完整的编号，包括所有父枚举的编号。
#set enum(numbering: "1.a)", full: true)
+ Cook
  + Heat water
  + Add ingredients
+ Eat

// Reversed: 是否反转这次列举的编号。
#set enum(reversed: true)
+ Coffee
+ Tea
+ Milk

// 默认对齐是 end + top，枚举数字对齐到当前文本方向的末尾
#set enum(number-align: start + bottom)
Here are some powers of two:
1. One
2. Two
4. Four
8. Eight
16. Sixteen
32. Thirty two

#set enum(reversed: false)
#for phase in (
  "Launch",
  "Orbit",
  "Descent",
) [+ #phase]