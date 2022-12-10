#!/usr/bin/env bash
# predictProteins.sh
# Usage: bash scripts/predictProteins.sh 1>results/logs/predictProteins.log 2>results/logs/predictProteins.err

# <transcriptome> might be data/trinity_de_novo/Trinity.fasta
# <result folder> might be results/trinity_de_novo.transdecoder_dir

TransDecoder.Predict -t $1 -0 $2

    --retain_pfam_hits results/pfam.domtblout \
    --retain_blastp_hits results/blastPep.outfmt6