#!/bin/bash

# find . -mindepth 2 -type f -print -exec mv {} . \; # This command moves all files from subdirectories of working directory into working directory

mkdir fastq_merged

for i in $(find ./ -type f -name "*.fastq.gz" | while read F; do basename $F | rev | cut -c 22- | rev; done | sort | uniq)

    do echo "Merging R1"

cat "$i"_L00*_R1_001.fastq.gz > fastq_merged/"$i"_R1_001.fastq.gz

       echo "Merging R2"

cat "$i"_L00*_R2_001.fastq.gz > fastq_merged/"$i"_R2_001.fastq.gz

done;