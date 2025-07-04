#import "@preview/fontawesome:0.5.0"

#let cover(
  degree: highlight("Degree"),
  name_degree: highlight("Name Degree"),
  degree_description: highlight("degree description"),
  author : highlight("Firstname LASTNAME"),
  date: highlight("Date"),
  thesis_title : highlight("title thesis"),
  organization :  highlight("organization"),
  Supervisors : highlight("Firstname LASTNAME, job title"),
  fac_supervisor :  highlight("Firstname LASTNAME, job title"),
  body
  ) = {

block(
    spacing: 0pt,
    inset: 20pt,
    fill: rgb("#B51621"),
    [
      #grid(
        columns: ( auto, auto),
        gutter: 1fr,
        block(spacing: 0pt,
            inset: 10pt,
          )[
              #text(
                font: "Arial",
                weight: "bold",
                fill: rgb("#FFFFFF"),
                size: 20pt,
                [#degree thesis]
              )
            ], 
      image("../ressources/logo.png", width: 100pt)
      )        
    ]
    )
  v(5%)
  text(
    font: "Arial",
    weight: "bold",
    fill: rgb("#4B575F"),
    size: 16pt
  )[University of Limoges - #name_degree]
  v(1%)
  text(
    font: "Arial",
    fill: rgb("#4B575F"),
    size: 12pt
  )[Thesis submitted in partial fulfillment of the requirements for the degree of #degree ]
    linebreak()

  upper(text(
    font: "Arial",
    fill: rgb("#4B575F"),
    size: 12pt,
  )[#degree_description])
  v(3%)
  text(
    font: "Arial",weight: "bold",
    fill: rgb("#4B575F"),
    size: 12pt,
  )[Presented and defensed by]
  linebreak()

  text(
    font: "Arial",
    
    fill: rgb("#4B575F"),
    size: 14pt,
  )[#author]
  v(1pt)
  text(
    font: "Arial",
    fill: rgb("#4B575F"),
    size: 12pt,
  )[On #date]
  v(8%)
  upper(text(
    font: "Arial",
    weight: "light",
    fill: rgb("#B51621"),
    size: 16pt,
  )[#thesis_title])
  v(15%)
  text(
    font: "Arial",
    fill: rgb("#4B575F"),
    size: 12pt,
  )[*Host organization* #linebreak()
  #organization]
  v(15pt)
  text(
    font: "Arial",
    fill: rgb("#4B575F"),
    size: 12pt,
  )[*Supervisors* #linebreak()
  #Supervisors
  ]
  v(15pt)
  text(
    font: "Arial",
    fill: rgb("#4B575F"),
    size: 12pt,
  )[*Faculty supervisor* #linebreak()
    #fac_supervisor
  ]
  align(right,
  image("../ressources/footer_cover.png", width: 20%)
  )
  
  set page(
    margin: auto,
    footer: context [
      #align(left)[
        #text(
          font: "Arial",
          fill: rgb("#7F7F7F"),
          size: 8pt,
        )[#author | #degree thesis | University of Limoges #h(1fr)#counter(page).display() ]
      ]
    ]
  )
  pagebreak()


  body
}

#let epigraphy(
    citation: highlight("The citation text"),
    author: highlight("The author of the citation"),
  )={
    align(
      right
    )[
    #text[#citation]
    #linebreak()
   *#text[#author]*

    ]

  }

#let acknowledgements()={
  pagebreak()
  text("Acknowledgements", size: 14pt, weight: "bold")
  line(length: 100%)
}

#let tableContents()={
  pagebreak()
  outline(
    title: [
      #text("Table of Contents", size: 14pt, weight: "bold"),
      #line(length: 100%)
    ],
  )
}
#let tableFigures()={
  pagebreak()
  outline(
    title: [
      #text("List of Figures", size: 14pt, weight: "bold"),
      #line(length: 100%)
    ],
    target: figure.where(kind: image)
  )
}

#let tableTable()={
  pagebreak()
  outline(
    title: [
      #text("List of Tables", size: 14pt, weight: "bold"),
      #line(length: 100%)
    ],
    target: figure.where(kind: table)
  )
  
}

#let title(my_title)={
  pagebreak()
  [= #my_title]
  line(length: 100%)
}
