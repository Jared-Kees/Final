#!/usr/bin/env bash
# blastPep.sh
# Usage: bash scripts/blastPep.sh 1>results/blastPep.outfmt6 2>results/logs/blastPep.err


blastp -query results/trinity_de_novo.transdecoder_dir/longest_orfs.pep  \
    -db /work/courses/BINF6308/inputFiles/blastDB/swissprot \
    -max_target_seqs 1 \
    -outfmt 6 -evalue 1e-5 -num_threads 4