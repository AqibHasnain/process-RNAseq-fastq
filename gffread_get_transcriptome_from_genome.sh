#!/bin/bash

# Kallisto and Salmon are fast mapping tools, however they map to the transcriptome
# this script uses gffread to create a transcriptome fasta from a genome reference fasta and an annotations gff(3)

WD=$(pwd) 

# these commands keep all non-coding RNAs, which we probably don't want as they might be contamination or just similar to coding sequences that we want to map to 
# gffread Burkholderia_thailandensis_e264.ASM1236v1.46.gff3 -g Burkholderia_thailandensis_e264.ASM1236v1.dna.toplevel.fa -w Burkholderia_thailandensis_e264.ASM1236v1.cds_from_genomic.fa
# gffread Pseudomonas_fluorescens_sbw25.ASM922v1.48.chromosome.Chromosome.gff3 -g Pseudomonas_fluorescens_sbw25.ASM922v1.dna.chromosome.Chromosome.fa -w Pseudomonas_fluorescens_sbw25.cds_from_genome.fa

# this command gets out just the coding sequences, given the gff3 annotation file and the genome
gffread -g Pseudomonas_fluorescens_sbw25.ASM922v1.dna.chromosome.Chromosome.fa -x PFSBW25CDS.cds_from_genome.fa Pseudomonas_fluorescens_sbw25.ASM922v1.48.chromosome.Chromosome.gff3
