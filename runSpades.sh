#!/usr/bin/env bash
# runSpades.sh

mkdir -p "ecoli/"

function Spades {
    spades.py \
    -1 Paired/SRR22600505_1.fastq \
    -2 Paired/SRR22600505_2.fastq \
    -o ecoli
}

Spades # runs the function Spades