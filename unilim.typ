#import "@preview/fontawesome:0.5.0"

#let title(
  niveau_formation,
  nom_formation,
  complément_formation,
  auteur,
  date_soutenance,
  titre_manuscrit,
  lieu,
  Encadrant,
  Encadrant_academique,
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
      image("ressources/logo.png", width: 100pt)
      )        
    ]
    )
  v(10%)
  text(
    font: "Arial",
    weight: "bold",
    fill: rgb("#4B575F"),
    size: 16pt
  )[Université de Limoges - #nom_formation]
  v(5%)
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
  v(5%)
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
  v(5%)
  text(
    font: "Arial",
    fill: rgb("#4B575F"),
    size: 12pt,
  )[*Etablissement d'accueil* #linebreak()
  #lieu]
  v(15pt)
  text(
    font: "Arial",
    fill: rgb("#4B575F"),
    size: 12pt,
  )[*Encadrants * #linebreak()
  #Encadrant
  ]
  v(15pt)
  text(
    font: "Arial",
    fill: rgb("#4B575F"),
    size: 12pt,
  )[*Encadrant Académique* #linebreak()
    #Encadrant_academique
  ]
}