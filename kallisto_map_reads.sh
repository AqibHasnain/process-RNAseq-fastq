#!/bin/bash

WD=$(pwd)
index=Pseudomonas_fluorescens_sbw25.cds_from_genome.index 
# mkdir $WD/results-kallisto-trimmed


# for f in $(ls fastq-merged/*.fastq.gz | xargs -n 1 basename | sed -e 's/_R1_001.fastq.gz//' -e 's/_R2_001.fastq.gz//' | sort -u)
# do  
# 	kallisto quant -i ${index} -o results-kallisto/${f} -t 6 fastq-merged/${f}_R1_001.fastq.gz fastq-merged/${f}_R2_001.fastq.gz  
# done

# for f in $(ls results-trimmomatic/*.fastq.gz | xargs -n 1 basename | sed -e 's/_R1_paired.fastq.gz//' -e 's/_R2_paired.fastq.gz//' | sort -u)
# do  
	# kallisto quant -i ${index} -o results-kallisto-trimmed/${f} -t 6 results-trimmomatic/${f}_R1_paired.fastq.gz results-trimmomatic/${f}_R2_paired.fastq.gz  
# done 


kallisto quant -i ${index} -o results-kallisto-trimmed/1-Rep1_S1 -t 6 results-trimmomatic/1-Rep1_S1_R1_paired.fastq.gz results-trimmomatic/1-Rep1_S1_R2_paired.fastq.gz  

