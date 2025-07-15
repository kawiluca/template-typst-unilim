#import "../lib_fr.typ": *

#set par(justify: true)
#set text(
  font: "Arial",
  size: 11pt,
)

#show: title.with(
  niveau_formation: "Master",
  nom_formation: "Master Cryptis",
  complément_formation: "Sécurité de l'Information et Cryptologie - mention Informatique",
  // auteur: "Prénom NOM",
  // date_soutenance: "",
  // titre_manuscrit: "mon titre",
  // lieu: "Le lieu du stage",
  // encadrant:(
  //   (
  //     "nom": "Mme First ENCADRANTE",
  //     "fonction": "Responsable du service "
  //   ), // <==== NE PAS OUBLIER CETTE VIRGULE, C'EST IMPORTANT ET REQUIS
  //   (
  //     "nom": "M. Second SUPERVISEUR",
  //     "fonction": "Ingenieur de recherche"
  //   )
  // ),
  // academique: (
  //   (
  //     "nom": "Mme Penultimate ENCADRANTE",
  //     "fonction": "Professeur des Universités, XLIM, CNRS,"
  //   ), // <==== NE PAS OUBLIER CETTE VIRGULE, C'EST IMPORTANT ET REQUIS
  // ),
)

#epigraphe(
  // citation: "La sécurité est un état d'esprit, pas un produit.",
  // auteur: "Edward Snowden",
)

#remerciements()
#include "my-include-section.typ"

#tableMatieres()
#tableIllustrations()
#tableTableau()

#titre("Introduction")



= Partie 1: Titre de la partie 1
== Sous titre de la partie 1

#lorem(30)
#figure(
  image("../resources/example.png", width: 50%),
  caption: [Une image d'exemple]
)

#lorem(30)
== Sous titre de la partie 1
#lorem(30)
== Sous titre de la partie 1

#pseudocode(
  ```c
  #Define MAX_SIZE 45

  int i = 0;

  for (i=0; i<MAX_SIZE; i++)
    printf("Bonjour le monde");
  ```,
  size: 50% //optional
)

= Partie 2: Titre de la partie 2

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


== Sous titre de la partie 2
#lorem(30)
== Sous titre de la partie 2
== Sous titre de la partie 2

= Partie 3: Titre de la partie 3
== Sous titre de la partie 3

#figure(
  table(
    columns: 4,
    [t], [1], [2], [3],
    [y], [0.3], [0.7], [0.5],
  ),
  caption: [Example de tableau],
)
#lorem(30)#footnote()[This a foonote]
== Sous titre de la partie 3
== Sous titre de la partie 3

#titre("Conclusion")



#pagebreak()
#bibliography("example.bib",
  title: [
    Références Bibliographiques 
    ],
  )

#titre("Annexes")
