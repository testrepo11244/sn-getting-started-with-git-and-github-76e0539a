# Contributing to Simple Interest Calculator

All contributions, bug reports, bug fixes, documentation improvements, enhancements, and ideas are welcome.

We are happy that you are considering contributing to this project. Whether you found a typo in the documentation, spotted a bug in the interest calculation, or have an idea for a brand-new feature, we would love to hear from you.

## Table of Contents

- [Code of Conduct](#code-of-conduct)
- [How Can I Contribute?](#how-can-i-contribute)
  - [Reporting Bugs](#reporting-bugs)
  - [Suggesting Enhancements](#suggesting-enhancements)
  - [Improving Documentation](#improving-documentation)
  - [Submitting Bug Fixes](#submitting-bug-fixes)
- [Pull Request Process](#pull-request-process)
- [Style Guidelines](#style-guidelines)
- [License](#license)

## Code of Conduct

This project and everyone participating in it is governed by the
[CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md). By participating, you are expected to
uphold this code. Please report unacceptable behavior to
simple-interest-calculator@example.com.

## How Can I Contribute?

### Reporting Bugs

Before creating a bug report, please check the existing issues to see whether the
problem has already been reported. When you file a bug report, please include:

* A clear and descriptive title.
* The exact command or input values used (principal, rate, time period).
* The output you expected and the output you actually received.
* The version of Bash you are running (`bash --version`).

### Suggesting Enhancements

Enhancement ideas are always welcome. Open an issue describing:

* The enhancement you would like to see.
* Why it would be useful for other users.
* Any alternative approaches you have considered.

### Improving Documentation

Documentation improvements — fixing typos, clarifying the formula, adding
worked examples, or translating the README — are great first contributions.

### Submitting Bug Fixes

Look for issues labelled `good first issue` or `bug`. Comment on the issue to
let others know you are working on it, then submit a pull request.

## Pull Request Process

1. Fork the repository and clone your fork locally.
2. Create a topic branch, for example `git checkout -b bug-fix-typo`.
3. Make your changes and commit them with a clear, descriptive message.
4. Make sure `./simple-interest.sh` still runs and produces correct results.
5. Push the branch to your fork and open a pull request against `main`.
6. Describe the problem and the solution in the pull request description, and
   reference the issue it closes (for example, `Closes #12`).

A maintainer will review your pull request as soon as possible. Please be
patient and responsive to feedback during the review.

## Style Guidelines

* Use `#!/bin/bash` as the shebang.
* Quote all variable expansions, e.g. `"$principal"`.
* Keep lines readable and indent with 4 spaces (or 2, consistently).
* Add a short comment above any non-obvious calculation.

## License

By contributing, you agree that your contributions will be licensed under the
Apache License 2.0 that covers this project. See [LICENSE](LICENSE) for details.