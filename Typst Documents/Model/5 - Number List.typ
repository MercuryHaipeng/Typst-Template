= Enum
Automatically numbered:
+ Preparations
+ Analysis
+ Conclusions

Manually numbered:
2. What is the first step?
5. I am confused.
+  Moving on ...

Multiple lines:
+ This enum item has multiple
  lines because the next line
  is indented.

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
  enum.item(10)[Tenth step],
)