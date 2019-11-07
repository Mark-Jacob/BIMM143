Class12: Structural Bioinformatics II
================

## Prep for docking

We want to produce a protein-only PDB file and adrug only PDB file.

``` r
library(bio3d)
file.name <- get.pdb("1hsg")
```

    ## Warning in get.pdb("1hsg"): ./1hsg.pdb exists. Skipping download

Here is the protein-only PDB file stored into the **protein** vector

``` r
pdb <- read.pdb("1hsg.pdb")
protein <- atom.select(pdb,"protein",value=TRUE)
write.pdb(protein,file = "1hsg_protein.pdb")
```

Here is the the ligand-only PDB file stored into the **ligand** vector.

``` r
ligand <- atom.select (pdb, "ligand", value = TRUE)
write.pdb(ligand, file = "1hsg_ligand.pdb")
```
