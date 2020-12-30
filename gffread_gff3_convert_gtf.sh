#!/bin/bash

# to read in annotations using tximport in R, need gtf file instead of gff3. 

WD=$(pwd) 

gffread Pseudomonas_fluorescens_sbw25.ASM922v1.48.chromosome.Chromosome.gff3 -T -o Pseudomonas_fluorescens_sbw25.gtf

