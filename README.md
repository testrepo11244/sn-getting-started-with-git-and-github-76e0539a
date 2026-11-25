# Simple Interest Calculator

A lightweight command-line **Simple Interest Calculator** written in Bash. It prompts the user for the three values needed to compute simple interest — **principal**, **rate of interest**, and **time period** — and prints the calculated interest along with the total amount payable.

## What is Simple Interest?

Simple interest is a quick and easy method of calculating the interest charge on a loan or an investment. It is determined by multiplying the daily interest rate by the principal by the number of days that elapse between payments.

The formula used by this project is:

```
Simple Interest (SI) = (P × R × T) / 100
```

Where:

| Symbol | Meaning | Example |
| ------ | ------- | ------- |
| `P` | Principal amount (the initial sum of money) | 10000 |
| `R` | Annual rate of interest, expressed as a percentage | 5 |
| `T` | Time period in years | 3 |

The **total amount** is then:

```
Total Amount = Principal + Simple Interest
```

## Example

Given a principal of `10000`, a rate of `5` percent per year, and a time period of `3` years:

```
Simple Interest = (10000 × 5 × 3) / 100 = 1500
Total Amount    = 10000 + 1500          = 11500
```

## Getting Started

### Prerequisites

* A POSIX-compatible shell (Bash 4.0 or later is recommended).
* `bc` (optional) — used for accurate decimal arithmetic. The script falls back to `awk`/integer math when `bc` is not installed.

### Installation

```bash
git clone https://github.com/<your-username>/simple-interest-calculator.git
cd simple-interest-calculator
chmod +x simple-interest.sh
```

### Usage

```bash
./simple-interest.sh
```

The script then asks for the required inputs:

```
Enter the principal amount: 10000
Enter the annual rate of interest (in %): 5
Enter the time period (in years): 3
```

And produces:

```
--------------------------------------------
Principal amount : 10000
Rate of interest : 5 %
Time period      : 3 year(s)
--------------------------------------------
Simple Interest  : 1500.00
Total Amount     : 11500.00
--------------------------------------------
```

## Project Structure

```
simple-interest-calculator/
├── README.md
├── LICENSE
├── CODE_OF_CONDUCT.md
├── CONTRIBUTING.md
└── simple-interest.sh
```

## Input Validation

The script rejects:

* Non-numeric input for any of the three fields.
* Negative principal amounts.
* Negative rates or time periods.

## Contributing

Contributions of every kind are welcome. Please read [CONTRIBUTING.md](CONTRIBUTING.md) before opening a pull request, and note that this project follows the [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md).

## License

This project is licensed under the Apache License 2.0 — see the [LICENSE](LICENSE) file for details.

## Author

Created as part of the IBM Skills Network *Getting Started with Git and GitHub* final project.