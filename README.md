# fastq_lane_merging.sh

The result of an RNA sequencing run is a set of fastq files containing reads from the sequencer. The sequencer outputs reads from separate lanes into separate files. This file concatenates reads from each sample, across lanes, into one fastq file.

# fastqc.sh

Calls fastqc to perform quality check on reads. Run this before and after trimming reads to see the effect of trimming. See multiqc (not provided) to generate a single report of all html outputs of fastqc.

# trimmomatic.sh

Calls trimmomatic (a java application) to trim specific sequences, e.g. adapter sequences, and to trim low quality reads. 

# gffread_get_transcriptome_from_genome.sh

From the genome fasta of organism of interest and annotation file (gff3), this script will generate a transcriptome fasta. This is necessary for the pseudoalignment with Kallisto
- Note that different settings are available for keeping all transcripts or alternatively just coding sequences, etc.

# gffread_gff3_convert_gtf.sh

Converts the annotations from gff3 format to gtf for easy importing in R

# kallisto_build_index.sh

Kallisto function that prepares the index (de Bruijn graph) from the reference transcriptome 

# kallisto_map_reads.sh

Maps the reads in the fastq files to the reference transcriptome. Output is annotated gene length, effective length, estimated counts, and estimated expression (TPM)

This is, more than anything, a quick summary when I need to refresh myself on processing fastq files after stepping away for sometime. Nevertheless, if it is helpful to someone besides myself, that is great. 


