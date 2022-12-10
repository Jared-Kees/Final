# !/usr/bin/env bash
# sortAll.sh
# Usage: bash scripts/sortAll.sh 1>results/logs/sort.log 2>results/logs/sort.err &

functio sortAll {
    samtools sort \
  results/sam \
  # shellcheck disable=SC1073
  -o results/bam \
done
}
sortAll