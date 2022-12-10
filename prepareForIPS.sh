#!/usr/bin/env bash
# prepareForIPA.sh
# Usage: bash prepareForIPA.sh

head -20 data/Trinity.fasta.transdecoder.pep
grep ">" data/Trinity.fasta.transdecoder.pep | wc -l
wc -l data/Trinity.fasta.transdecoder.pep
55806 data/Trinity.fasta.transdecoder.pep
head -2802 data/Trinity.fasta.transdecoder.pep | grep ">" | wc -l