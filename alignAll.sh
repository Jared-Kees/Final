#!/usr/bin/env bash
# alignReads.sh
# Usage: bash scripts/alignAll.sh 1>results/logs/alignReads.log 2>results/logs/alignReads.err &

function alignReads {
    gsnap \
    -A sam \
    -D data \
    -d AiptasiaGmapDb \
    -N 1 \
    $pairedOutPath$sampleName$leftSuffix \
    $pairedOutPath$sampleName$rightSuffix \
    1>results/sam
}
alignReads