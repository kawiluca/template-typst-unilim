# Typst Template for Unilim

## Disclaimer

This repository contains unofficial adaptations of official templates from the University of Limoges. However, the Typst templates provided here are **not official**, even if they closely resemble the originals. You can find the official templates (LaTeX and Word only) at the following link: [Templates of the University of Limoges](https://support.unilim.fr/publications-et-redaction/depot-et-modeles-de-documents/telecharger-un-modele-de-document/)

## Why use Typst?

Typst is an alternative to LaTeX with a lighter and more modern syntax. More information is available on the official website: [Typst website](https://typst.app/)

## How to install and compile with Typst?

To install Typst, please follow the instructions in the README of the [official repository](https://github.com/typst/typst)

To compile a Typst file (`.typ`), you can use one of the following commands:

```bash
# Creates `file.pdf` in the working directory.
typst compile file.typ

# Creates a PDF file at the specified output path.
typst compile path/to/source.typ path/to/output.pdf

# Watches the source file and recompiles on changes.
typst watch file.typ
```
## Tips for generating a bibliography
Use the free tool Zotero during your literature review to collect and organize your sources. Once your library is ready, you can export it in BibLaTeX format (.bib), which can be easily included in your Typst file.

## Examples

See [french version](./preview/preview_fr.pdf)

See [english version](./preview/preview_en.pdf)

## Contents

This template contains:

- Two versions: french and english
- Cover (+ footer) of the University of Limoges
- Standard document structure (cover, epigraphy, Acknowledgements, tables, body, conclusion, bibliography, appendix)
- Title in University of Limoges format
- Example to include .typ file (to divide document in several files)
- Example to insert image
- Example to insert table
- Example to insert pseudocode
- Example to insert math formula
- Example to insert source in bibliography