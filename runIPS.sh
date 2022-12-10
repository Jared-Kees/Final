#!/usr/bin/env bash
# runIPS.sh
# Usage: bash runIPS.sh <input> <output>

./interproscan.sh data/top05_Trinity.fasta.transdecoder.pep results/proteins.tsv
STDOUT>results/logs/scan.log
STDERR>results/logs/scan.err

