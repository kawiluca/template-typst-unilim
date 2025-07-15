// install from typst univers
// #import "@preview/unilim-thesis:0.1.0":*

// install in local version
#import "@local/unilim-thesis:0.1.0":*

//for local development
// #import "../lib_en.typ": *

#set par(justify: true)
#set text(
  font: "Arial",
  size: 14pt,
)

#show: cover.with(
  // degree: "Master",
  // name_degree: "Master Cryptis",
  // degree_description: "Information Security and Cryptology - Computer Science major",
  // author: "",
  // date: "",
  // thesis_title: "",
  // organization: "",
  // supervisor:(
  //   (
  //     "name": "Ms. First SUPERVISOR",
  //     "function": "Department manager",
  //   ), // <==== DON'T FORGET THIS COMMA, IT'S IMPORTANT AND REQUIRED
  //  (
  //     "name": "Ms. Second SUPERVISOR",
  //     "function": "Department manager",
  //   ),
  // ),
  // fac_supervisor: (
  //   (
  //     "name": "Pr. Last SUPERVISOR",
  //     "function": "Associate Professor, XLIM CNRS",
  //   ), // <==== DON'T FORGET THIS COMMA, IT'S IMPORTANT AND REQUIRED
  //   ),
)

#epigraphy(
  // citation: "La sécurité est un état d'esprit, pas un produit.",
  // auteur: "Edward Snowden",
)

#acknowledgements()
#include "my-include-section.typ"


#tableContents()

#tableFigures()
#tableTable()

#title("Introduction")



= chapter 1:
== subtitle  

#lorem(30)
#figure(
  image("../resources/example.png", width: 50%),
  caption: [example]
)

#lorem(30)
== subtitle 
#lorem(30)
== subtitle 
#pseudocode(
  ```c
  #Define MAX_SIZE 45

  int i = 0;

  for (i=0; i<MAX_SIZE; i++)
    printf("Hello, world!");
  ```,
  size: 50% //optional
)
= chapter 2: 
== subtitle
#lorem(30)
== subtitle


*HQC*@aragon_hamming_nodate

Encryption:
$bold(c) = bold(m) * bold(G) + bold(e)$

Syndrome:
$bold(s) = bold(c) * bold(H)^T$

Hamming weight of a error vector:
$"wt"_H(bold(e)) = w$

Quasi-cyclic structure (rotation) :
$bold(m) * bold(G) = sum_{i=0}^{n-1} m_i * "rot"_i(bold(g))$

Fundamental problem (syndrome decoding) :
$bold(H) * bold(e)^T = bold(s)$

Decryption: $hat(bold(m)) = bold(c) - hat(bold(e)) * bold(G)$

== subtitle

= chapter 3: 
== subtitle
#figure(
  table(
    columns: 4,
    [t], [1], [2], [3],
    [y], [0.3], [0.7], [0.5],
  ),
  caption: [Example],
)
#lorem(30)#footnote()[This a foonote]
== subtitle
== subtitle

#title("Conclusion")


#pagebreak()
#bibliography("example.bib",
  title: [
    Bibliography 
    ],
  )

#title("Appendix")
