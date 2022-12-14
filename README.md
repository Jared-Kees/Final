# Final
Final Project pipeline


# Introduction

## Purpose
 The purpose of this pipeline is to create an in-depth analysis of a specified organisms genome. This pipeline uses various Bioinformatic tools within sheel scripts that preform different analysis processes. 
 
 
 ## Required Input
  To start the pipleine the required input is the SRR#### aquired from the NIH archive.
  
  ## required tools
  Trimmomatic
  
  SPAdes 
  
  Quast
  
  gsnap
  
  samtools
  
  Trinity
  
  Blast
  
  TransDecoder
  
  hmmscan
  
  InterProScan
  
  
  ## Expected Output
  After running the pipeline the output should be protein function predictions.
  
  
  # Pipeline sections
  
  ## Genome assembly
  
  ### Purpose
  The purpose of this step was to retrieve data to assemble the genome for the desired organism. This step is also deigned to trim the sequence raw reads and then assemble them. It ends with a quality check of the assembled genome. 
  
  ### Required input
  The starting input required for this step is the SRR number from the NIH archive to retrive the data. The input for trimming are the fastq files from retriving the data. The input for assembling the trimmed reads are the fastq files from trimming. 
  
  ### Required tools
  Trimmomatic-0.39-2
  SPAdes v3.13.1
  QUAST 
  
  ### reccomeded parameters 
 
 #### Trimmomatic
 PE- Indactes paried value ends
 
 threads- indicates how many server threads are being used, recomeded to set to 1
 
 phred33- indicates the quality encoding method used for the reads
 
 Headcrop- indicates the number of bases to remove from the begining, regardless of quality, recomended to set to 0
 
 Illuminaclip- specifies a file of adapter sequences and the number of mismathes allowed in the adapter match recomeded TruSeq3-PE.fa:2:30:10
 
 leading and trailing- the minimum quality for trimming he start and end of reads, recomeded to set to 20 for both.
 
 Slidingwindow- indicates the sliding window size and the minimum average quality for the bases in that window, recomeded to set to 4:30 
 
 Minlen- specifies the minimum length for a read to be kept, recomeded to set to 36
  
  
  ### Expected output
  The expected output is a spades.log file with the data for the asembled genome, and a QUAST report for a quality check on the assembled genome. 
  
  
   ## Transcriptome assembly
  
  ### Purpose
  The purpose of this step is to assemble a transcriptome from RNA sequnce data.
  
  ### Required input
  single sorted bam file as input
  
  ### Required tools
  Samtools/1.10
  
  Trinity
  
  
  
  ### reccomeded parameters 
  
  #### Samtools
  b- is used to pass in bamIn.txt
  
  #### Trinity
  genome_guided_max_intron- pecifies the maximum separation distance Trinity will allow for segments of a transcript to span introns, recomended to set to 1000
  
  max_memory- is the maximum memory Trinity will use for the assembly, recomended to set to 10G
  
  CPU- specifies the number of CPU cores used, recomeded to set to 4
 
  ### Expected output
  This step should end with an output of numerous files in a result/trinity_de_novo directory
  
 
   ## Gene annotation
  
  ### Purpose
  The purpose of this step in the pipleine gene annotation,to find the location and function of genes in the assembled genome
  
  ### Required input
  Raw FASTQ reads
  
  ### Required tools
  Trimmomatic-0.39-2
  
  GSNAP
  
  Samtools
  
  Blastx 2.12.0+
  
  
  ### reccomeded parameters 
  
  #### Trimmomatic
   PE- Indactes paried value ends
 
 threads- indicates how many server threads are being used, recomeded to set to 1
 
 phred33- indicates the quality encoding method used for the reads
 
 Headcrop- indicates the number of bases to remove from the begining, regardless of quality, recomended to set to 0
 
 Illuminaclip- specifies a file of adapter sequences and the number of mismathes allowed in the adapter match recomeded TruSeq3-PE.fa:2:30:10
 
 leading and trailing- the minimum quality for trimming he start and end of reads, recomeded to set to 20 for both.
 
 Slidingwindow- indicates the sliding window size and the minimum average quality for the bases in that window, recomeded to set to 4:30 
 
 Minlen- specifies the minimum length for a read to be kept, recomeded to set to 36
 
 #### GSNAP
 
 d- indicates the directory in which to build the database
 
 A- tells gsnap to produce the sam alignment format
 
 N-  parameter is used to control the amount of parallelization that is used during the mapping process, recomended to set to 1
 
 #### Blastx
 
 db- specify the database 
 
 outfmt 6- tabular output
 
 num_alignments- number of returned alignments, recomended to set to 1 
 
 
  ### Expected output
  
  The ending out put of this step is a list of AIP samples and and a BLASTX report
  
  
  
   ## Protein function prediction
  
  ### Purpose
  The purpose of this step is to find predicted prottein functions by sorting protein sequences into classes. 
  
  ### Required input
  Trinity.fasta
  
  trinity_de_novo.transdecoder_dir
  
  ### Required tools
  TransDecoder
  
  blastp 
  
  hmmscan
  
  interproscan
  
  ### reccomeded parameters 
  
  #### TransDecoder
  t- specifies the input transcripts
  
  ####blastp
  
  db- Specify the database
  
  max_target_seqs- specifies the maximum number of sequences that will be reported in the output, recomended to set to 4
  
  outfmt 6- tabular output
  
  evalue- specifies the maximum E-value that will be reported in the output, recomeded to set to 1e -5
  
  num_threads- specifies the number of CPU threads or cores that will be used, recomeded to set to 4
  
  #### hmmscan
  cpu- specifies the number of cpu cores to be used, recemeded to set to 4
  
  domtblout- specifies the name of the output file 
  
  #### Interproscan
  GoTerms
  
  CPU- NUmber of CPU cores used, recomended to set to 2 
  
  dp- Disable the InterProScan Lookup Match Service
  
  ### Expected output
  
  The expected output for this step is a Protei.tsv file with results and a Trinity.fasta.transdecoder.pep file
 
  
  

