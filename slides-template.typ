#import "@preview/polylux:0.3.1": *
#import "@preview/fontawesome:0.1.0": *
#import "style/utils.typ": *

#import themes.metropolis: *

#show: metropolis-theme.with(
  aspect-ratio: "16-9",
  footer: [Optional Footnote]
)

#set text(font: "Inter", weight: "light", size: 20pt)
#show math.equation: set text(font: "Fira Math")
// #show raw: set text(font: "Fira Code", weight: "regular")
#set strong(delta: 150)
#set par(justify: true)

#title-slide(
  title: "Slide Title",
  subtitle: "Subtitle",
  author: "Author Name",
  date: datetime.today().display("[day] [month repr:long] [year]"),
)

#new-section-slide("Slide section 1")

#slide(title: "Slide")[
  *Bold* and _italic_ text.
  
  This is a citiation @nicolas_farabegoli_2024_10535841.

  #alert[
    This is an alert.
  ]
]

#slide(title: "Code slide")[
  #code(bgcolor: m-extra-light-gray, strokecolor: 1pt + m-dark-teal)[```python
  print("Hello, world!")

  for i in range(10):
      print(i)

  print("Goodbye, world!")
  ```]

  #code(bgcolor: m-extra-light-gray, strokecolor: 1pt + m-dark-teal)[```kotlin
  fun main() {
      println("Hello, world!")

      for (i in 0..9) {
          println(i)
      }
      println("Goodbye, world!")
  }
  ```]
]

#slide[
  = This is a title

  #lorem(24)

  == This is a subtitle

  #lorem(34)
]

#slide[

  == Icon in a title #fa-java()

  #fa-icon("github", fa-set: "Brands") -- Github icon

  #fa-icon("github", fa-set: "Brands", fill: blue) -- Github icon blue fill
]

#slide[
  #bibliography("bibliography.bib")
]
