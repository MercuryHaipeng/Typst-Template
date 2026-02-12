= Assert
// 代码块需要缩进到下一级别，保证列表项连续
+ 确保某项条件得到满足。如果条件未满足，则会以错误失败。文档中不产生任何输出。
  ```typst
  #assert(1 < 2, message: "math broke")
  ```
+ 确保两个值相等。如果不等，则该函数失败。文档中不产生任何输出
  ```typst
  #assert.eq(10, 10)
  ```
+ 确保两个值不相等。如果第一个值等于第二个值，则会失败。文档中不产生任何输出。
  ```typst
  #assert.ne(3, 4)
  ```

// 也可以使用 enum 保证列表连续
#enum(
  [
    确保某项条件得到满足。如果条件未满足，则会以错误失败。文档中不产生任何输出。
    ```typst
    #assert(1 < 2, message: "math broke")
    ```
  ],
  [
    确保某项条件得到满足。如果条件未满足，则会以错误失败。文档中不产生任何输出。
    ```typst
    #assert(1 < 2, message: "math broke")
    ```
  ],
  [
    确保两个值不相等。如果第一个值等于第二个值，则会失败。文档中不产生任何输出。
    ```typst
    #assert.ne(3, 4)
    ```
  ]
)


#pagebreak()

= Bool 
#false \
#true \
#(1 < 2)

#pagebreak()

= Bytes
- Converts a value to bytes.
#bytes((123, 160, 22, 0)) \
#bytes("Hello 😃")

