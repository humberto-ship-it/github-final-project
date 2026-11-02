#!/usr/bin/env bash

# Simple Interest Calculator
# Formula: simple interest = principal * rate * time / 100

set -u

is_positive_number() {
  local value="$1"

  if [[ ! "$value" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
    return 1
  fi

  awk -v n="$value" 'BEGIN { exit !(n > 0) }'
}

read -r -p "Enter the principal amount: " principal
read -r -p "Enter the annual rate of interest (%): " rate
read -r -p "Enter the time period in years: " time

if ! is_positive_number "$principal" ||
   ! is_positive_number "$rate" ||
   ! is_positive_number "$time"; then
  echo "Error: enter positive numeric values only." >&2
  exit 1
fi

simple_interest=$(awk -v p="$principal" -v r="$rate" -v t="$time" \
  'BEGIN { printf "%.2f", (p * r * t) / 100 }')

echo "The simple interest is: $simple_interest"
