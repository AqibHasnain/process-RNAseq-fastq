#!/bin/bash

WD=$(pwd) 
mkdir $WD/results-fastqc-trimmed
# mkdir $WD/trim-fastqc-test

fastqc results-trimmomatic/*.gz -t 8 -o results-fastqc-trimmed
# fastqc results-trimmomatic/1-Rep1_S1_R1_paired.fastq.gz -o trim-fastqc-test
# fastqc results-trimmomatic/1-Rep1_S1_R2_paired.fastq.gz -o trim-fastqc-test

