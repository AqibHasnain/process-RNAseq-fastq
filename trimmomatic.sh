#!/bin/bash

WD=$(pwd) 
# mkdir $WD/results-trimmomatic
# mkdir $WD/results-trimmomatic/unpaired-reads
ADAPTER_DIR='/Applications/Trimmomatic-0.39/adapters'

# for f in $(ls fastq-merged/*.fastq.gz | sed -e 's/_R1_001.fastq.gz//' -e 's/_R2_001.fastq.gz//' | sort -u)
# do 
# 	# echo $(basename $f)
# 	java -jar /usr/local/bin/trimmomatic-0.39.jar PE -phred33 -threads 8 \
# 		${f}_R1_001.fastq.gz ${f}_R2_001.fastq.gz \
# 		results-trimmomatic/$(basename $f)_R1_paired.fastq.gz results-trimmomatic/unpaired-reads/$(basename $f)_R1_unpaired.fastq.gz \
# 		results-trimmomatic/$(basename $f)_R2_paired.fastq.gz results-trimmomatic/unpaired-reads/$(basename $f)_R2_unpaired.fastq.gz \
# 		ILLUMINACLIP:${ADAPTER_DIR}/TruSeq-polyG-PE.fa:2:30:10:8:TRUE LEADING:5 TRAILING:5 SLIDINGWINDOW:4:15 MINLEN:40
# done

java -jar /usr/local/bin/trimmomatic-0.39.jar PE -phred33  \
	fastq-merged/1-Rep1_S1_R1_001.fastq.gz fastq-merged/1-Rep1_S1_R2_001.fastq.gz \
	results-trimmomatic/1-Rep1_S1_R1_paired.fastq.gz results-trimmomatic/unpaired-reads/1-Rep1_S1_R1_unpaired.fastq.gz \
	results-trimmomatic/1-Rep1_S1_R2_paired.fastq.gz results-trimmomatic/unpaired-reads/1-Rep1_S1_R2_unpaired.fastq.gz \
	ILLUMINACLIP:${ADAPTER_DIR}/TruSeq-polyG-PE.fa:2:30:10:8:TRUE LEADING:5 TRAILING:5 SLIDINGWINDOW:4:15 MINLEN:40
