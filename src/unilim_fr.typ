#let title(
  niveau_formation: highlight("Niveau du Diplome"),
  nom_formation: highlight("Nom de la formation"),
  complément_formation: highlight("description de la formation"),
  auteur : highlight("Prénom NOM"),
  date_soutenance: highlight("Date de soutenance"),
  titre_manuscrit : highlight("Titre du manuscrit"),
  lieu :  highlight("Lieu de stage ou d'accueil"),
  encadrant : (
    (
      nom: highlight("Mme Premier ENCADRANT"),
      fonction: highlight("Responsable du service"),
    ), 
    (
      nom: highlight("M. Second ENCADRANT"),
      fonction: highlight("Ingenieur de recherche"),
    ), 
  ),
  academique :  (
    (
      nom: highlight("Pr. Pénultième ENCADRANT"),
      fonction: highlight("Professeur des Universités, XLIM, CNRS"),
    ), 
    (
      nom: highlight("Pr. Dernier ENCADRANT"),
      fonction: highlight("Maître de Conférences, XLIM, CNRS"),
    ), 
  ),
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
                [Mémoire de #niveau_formation]
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
  )[Université de Limoges - #nom_formation]
  v(1%)
  text(
    font: "Arial",
    fill: rgb("#4B575F"),
    size: 12pt
  )[Mémoire pour l'obtention du grade de #niveau_formation ]
    linebreak()

  upper(text(
    font: "Arial",
    fill: rgb("#4B575F"),
    size: 12pt,
  )[#complément_formation])
  v(3%)
  text(
    font: "Arial",weight: "bold",
    fill: rgb("#4B575F"),
    size: 12pt,
  )[Présenté et soutenu par ]
  linebreak()

  text(
    font: "Arial",
    
    fill: rgb("#4B575F"),
    size: 14pt,
  )[#auteur]
  v(1pt)
  text(
    font: "Arial",
    fill: rgb("#4B575F"),
    size: 12pt,
  )[Le #date_soutenance]
  v(8%)
  upper(text(
    font: "Arial",
    weight: "light",
    fill: rgb("#B51621"),
    size: 16pt,
  )[#titre_manuscrit])
  v(15%)
  text(
    font: "Arial",
    fill: rgb("#4B575F"),
    size: 12pt,
  )[*Etablissement d'accueil* #linebreak()
  #lieu]
  v(15pt)
  if(encadrant.len() < 2) {
    text(
    font: "Arial",
    fill: rgb("#4B575F"),
    size: 12pt,
  )[*Encadrant*#linebreak()]
  }else{
    text(
    font: "Arial",
    fill: rgb("#4B575F"),
    size: 12pt,
  )[*Encadrants*#linebreak()] 
  }
  [
    #for perso in encadrant {
      text(
        font: "Arial",
        fill: rgb("#4B575F"),
        size: 12pt,
      )[#perso.at("nom"), #perso.at("fonction")#linebreak()]
    }
  ]
  v(15pt)
  if(academique.len() < 2) {
    text(
    font: "Arial",
    fill: rgb("#4B575F"),
    size: 12pt,
  )[*Encadrant Académique*#linebreak()]
  }else{
    text(
    font: "Arial",
    fill: rgb("#4B575F"),
    size: 12pt,
  )[*Encadrants Académique*#linebreak()] 
  }
  [
    #for pers in academique {
      text(
        font: "Arial",
        fill: rgb("#4B575F"),
        size: 12pt,
      )[#pers.at("nom"), #pers.at("fonction")#linebreak()]
    }
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
        )[#auteur | Mémoire de #niveau_formation | Université de Limoges #h(1fr)#counter(page).display() ]
      ]
    ]
  )
  pagebreak()


  body
}

#let epigraphe(
    citation: highlight("Texte de l'épigraphe"),
    auteur: highlight("Auteur de l'épigraphe"),
  )={
    align(
      right
    )[
    #text[#citation]
    #linebreak()
   *#text[#auteur]*

    ]

  }

#let remerciements()={
  pagebreak()
  text("Remerciements", size: 14pt, weight: "bold")
  line(length: 100%)
}

#let tableMatieres()={
  pagebreak()
  outline(
    title: [
      #text("Table des matières", size: 14pt, weight: "bold"),
      #line(length: 100%)
    ],
  )
}
#let tableIllustrations()={
  pagebreak()
  outline(
    title: [
      #text("Table des figures", size: 14pt, weight: "bold"),
      #line(length: 100%)
    ],
    target: figure.where(kind: image)
  )
}

#let tableTableau()={
  pagebreak()
  outline(
    title: [
      #text("Table des tableaux", size: 14pt, weight: "bold"),
      #line(length: 100%)
    ],
    target: figure.where(kind: table)
  )
  
}

#let titre(my_titre)={
  pagebreak()
  [= #my_titre]
  line(length: 100%)
}

#let pseudocode(
  content,
  caption: highlight("Légende manquante"),
  size: 80%
  ) = {
set par(justify: false)
figure(
  block(
    fill: luma(250), 
    radius: 3pt,
    stroke: .6pt + luma(200),
    inset:	(x: .45em, y: .65em),
    width: size,
    clip: false,
  [#align(left)[#content]]),
  caption: [#caption],
  supplement: "Code",
  kind: "code",
)}