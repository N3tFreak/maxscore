#!/bin/bash
# maxscore.sh - Determine the highest score and show the difference from max
# Author: Ben Grossman

# Read 5 scores
scores=()
echo "Enter 5 scores:"
for ((i=0; i<5; i++)); do
  read -r score
  scores+=("$score")
done

# Find max
max=${scores[0]}
for s in "${scores[@]}"; do
  if (( s > max )); then
    max=$s
  fi
done

echo "The highest score is $max"
echo "The scores are:"
for s in "${scores[@]}"; do
  diff=$((max - s))
  echo "$s differs from max by $diff"
done
