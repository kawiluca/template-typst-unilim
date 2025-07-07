#import "src/unilim_en.typ": *

#set par(justify: true)
#set text(
  font: "Arial",
  size: 11pt,
)

#show: cover.with(
  // degree: "Master",
  // name_degree: "Master Cryptis",
  // degree_description: "Information Security and Cryptology - Computer Science major",
  // author: "",
  // date: "",
  // thesis_title: "",
  // organization: "",
  // Supervisors:"",
  // fac_supervisor: "",
)

#epigraphy(
  // citation: "La sécurité est un état d'esprit, pas un produit.",
  // auteur: "Edward Snowden",
)

#acknowledgements()
#lorem(450)

#tableContents()

#tableFigures()
#tableTable()

#title("Introduction")



= chapter 1:
== subtitle  

#lorem(30)
#figure(
  image("ressources/example.png", width: 50%),
  caption: [example]
)

#lorem(30)
== subtitle 
#lorem(30)
== subtitle 

= chapter 2: 
== subtitle
#lorem(30)
== subtitle


*HQC*

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
article @aragon_hamming_nodate

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
