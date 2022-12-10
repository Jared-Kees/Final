#!/usr/bin/env bash
# pfamScan.sh
# Usage: bash scripts/pfamScan.sh 1>results/logs/pfamScan.log 2>results/logs/pfamScan.err

hmmscan --cpu 4 --domtblout results/pfam.domtblout \
    /work/courses/BINF6308/inputFiles/SampleDataFiles/Pfam-A.hmm \
    results/trinity_de_novo.transdecoder_dir/longest_orfs.pep
