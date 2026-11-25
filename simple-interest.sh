#!/bin/bash
###############################################################################
# simple-interest.sh
#
# A Simple Interest Calculator.
#
# Simple Interest is calculated using the formula:
#
#     SI = (Principal * Rate * Time) / 100
#
# where:
#     Principal -> the initial amount of money
#     Rate      -> the annual rate of interest, in percent
#     Time      -> the time period, in years
#
# The script prompts the user for each of these three values, validates the
# input, and prints the computed simple interest together with the total
# amount (principal + interest).
#
# Usage:
#     chmod +x simple-interest.sh
#     ./simple-interest.sh
#
# License: Apache License 2.0 - see the LICENSE file for details.
###############################################################################

# Exit immediately if a command exits with a non-zero status.
set -o errexit

# Treat unset variables as an error when substituting.
set -o nounset

# Print a prompt and read a numeric value from standard input.
#
# $1 = prompt text shown to the user
# $2 = name of the variable that will hold the value
read_number() {
    local prompt="$1"
    local varname="$2"
    local value=""

    while true; do
        printf '%s' "$prompt"
        read -r value

        # Reject empty input.
        if [ -z "$value" ]; then
            echo "Input cannot be empty. Please try again." >&2
            continue
        fi

        # Accept integers and decimals, with an optional leading sign.
        if ! printf '%s' "$value" | grep -Eq '^-?[0-9]+([.][0-9]+)?$'; then
            echo "Invalid input: '$value'. Please enter a numeric value." >&2
            continue
        fi

        # Reject negative amounts, rates and time periods.
        if printf '%s' "$value" | grep -Eq '^-'; then
            echo "Invalid input: '$value'. The value cannot be negative." >&2
            continue
        fi

        printf -v "$varname" '%s' "$value"
        break
    done
}

# Perform floating point arithmetic, preferring bc and falling back to awk.
#
# $1 = arithmetic expression, e.g. "(10000 * 5 * 3) / 100"
calculate() {
    local expression="$1"

    if command -v bc >/dev/null 2>&1; then
        printf 'scale=2; %s\n' "$expression" | bc
    else
        awk "BEGIN { printf \"%.2f\\n\", $expression }"
    fi
}

# Ask the question and exit if the user declines.
echo "=============================================="
echo "        Simple Interest Calculator"
echo "=============================================="
echo "This calculator uses the formula:"
echo "    Simple Interest = (Principal x Rate x Time) / 100"
echo ""

read_number "Enter the principal amount: " principal
read_number "Enter the annual rate of interest (in %): " rate
read_number "Enter the time period (in years): " time

# Compute simple interest and the total amount.
simple_interest=$(calculate "($principal * $rate * $time) / 100")
total_amount=$(calculate "$principal + $simple_interest")

# Display the results.
echo ""
echo "----------------------------------------------"
printf "Principal amount : %s\n" "$principal"
printf "Rate of interest : %s %%\n" "$rate"
printf "Time period      : %s year(s)\n" "$time"
echo "----------------------------------------------"
printf "Simple Interest  : %s\n" "$simple_interest"
printf "Total Amount     : %s\n" "$total_amount"
echo "----------------------------------------------"

exit 0