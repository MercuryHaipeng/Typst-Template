// 包含自定义的函数
#let with_answer = false
#let with_answer = true

#let 整体缩进 = 2em

#let g98 = box[$g=9.8$#h(0.25em)m/s#super[2]]
#let g10 = box[$g=10$#h(0.25em)m/s#super[2]]
#let ms2 = box[m/s#super[2]]
#let ms = box[m/s]

#let sin37 = $sin 37 degree = 0.6$
#let cos37 = $cos 37 degree = 0.8$
#let sin53 = $sin 53 degree = 0.8$
#let cos53 = $cos 53 degree = 0.6$

// display 内容
#let ds(arg) = {
  math.equation((math.display(arg)))
}