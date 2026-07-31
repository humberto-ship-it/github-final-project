#!/usr/bin/env bash

# Simple Interest Calculator
# Formula: simple interest = principal * rate * time / 100

set -u

read -r -p "Enter the principal amount: " principal
read -r -p "Enter the annual rate of interest (%): " rate
read -r -p "Enter the time period in years: " time

number_pattern='^[0-9]+([.][0-9]+)?$'

if [[ ! "$principal" =~ $number_pattern ||
      ! "$rate" =~ $number_pattern ||
      ! "$time" =~ $number_pattern ]]; then
  echo "Error: enter positive numeric values only." >&2
  exit 1
fi

simple_interest=$(awk -v p="$principal" -v r="$rate" -v t="$time" \
  'BEGIN { printf "%.2f", (p * r * t) / 100 }')

echo "The simple interest is: $simple_interest"
