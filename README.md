# Package mqoi

This is the repository of the `mqoi` R package for the *Mètodes Quantitatius en Organització Industrial* course at ESEIAAT.

## Installing

To install the repo, install the devtools R package and type in the console:

`devtools::install_github("jmsallan/mqoi", dependencies = TRUE)`

This instruction will install also packages `data.table`, `igraph` and `Rglpk`. These packages will be used in the course.

## Contents

The package includes the `plem_solver()` function, which allows solving linear integer and mixed programming models using the MathProg syntax using the GLPK solver. Learn more about GLPK at <https://en.wikibooks.org/wiki/GLPK>.
