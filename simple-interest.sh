#!/bin/bash
# simple-interest.sh - calculate simple interest

# Check if exactly 3 arguments are given
if [ "$#" -ne 3 ]; then
  echo "Usage: $0 principal annual_rate_percent years"
  exit 1
fi

P=$1
R=$2
T=$3

# Calculate simple interest
SI=$(echo "scale=2; $P * $R * $T / 100" | bc)
TOTAL=$(echo "scale=2; $P + $SI" | bc)

echo "Principal: $P"
echo "Rate (% per year): $R"
echo "Time (years): $T"
echo "Simple Interest: $SI"
echo "Total Amount after $T years: $TOTAL"

Add simple interest calculator script
