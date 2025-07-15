# Typst Template for Unilim thesis

## Disclaimer & Usage

This repository contains unofficial adaptations of **official templates from the University of Limoges**. However, the Typst templates provided here are **not official**, even if they closely resemble the originals. You can find the official templates (LaTeX and Word only) at the following link: [Templates of the University of Limoges](https://support.unilim.fr/publications-et-redaction/depot-et-modeles-de-documents/telecharger-un-modele-de-document/)

## Key Features
- **Two versions**: french and english
- **Cover (+ footer)** of the University of Limoges
- **Standard document structure** (cover, epigraphy, Acknowledgements, tables, body, conclusion, bibliography, appendix)
- **Title** in University of Limoges format
- **Example to include .typ file** (to divide document in several files)
- **Example to insert image**
- **Example to insert table**
- **Example to insert pseudocode**
- **Example to insert math formula**
- **Example to insert source in bibliography**

## Demo

<img src="https://raw.githubusercontent.com/kawiluca/unilim-thesis/refs/heads/main/0.1.0/asset/thumbail.png" width="50%">


See [french version](./preview/preview_fr.pdf)

See [english version](./preview/preview_en.pdf)

## Installation

### From typst univers

In your project directory, initialize the project
```sh
$ typst init @preview/unilim-thesis:0.1.0
$ typst compile unilim-thesis/templates/example_en.typ
$ typst compile unilim-thesis/templates/exemple_fr.typ
```

### From local version 

---
LINUX - Installing the template
```sh
~$ mkdir -p ".local/share/typst/packages/local"
~$ git clone https://github.com/kawiluca/unilim-thesis.git ./local/share/typst/local
```

In your project directory, initialize the project
```sh
$ cd <your project directory>
$ typst init @local/unilim-thesis:0.1.0
$ typst compile unilim-thesis/templates/example_en.typ
$ typst compile unilim-thesis/templates/exemple_fr.typ
```
---
Windows - Installing the template
```sh
~$ mkdir "%LOCALAPPDATA%/typst/packages/local"
~$ git clone https://github.com/kawiluca/unilim-thesis.git "%LOCALAPPDATA%/typst/packages/local"
```

In your project directory, initialize the project
```sh
$ cd <your project directory>
$ typst init @local/unilim-thesis:0.1.0
$ typst compile unilim-thesis/templates/example_en.typ
$ typst compile unilim-thesis/templates/exemple_fr.typ
```



## Tips for generating a bibliography
Use the free tool Zotero during your literature review to collect and organize your sources. Once your library is ready, you can export it in BibLaTeX format (.bib), which can be easily included in your Typst file.

## Contributing

If you would like to contribute to this project, I appreciate bug reports as issues, and I am happy to review pull requests, especially for new layout types. **If you use this template for your manuscript, please add a star to this github repository.**