<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages). 
-->

# String Calculator Assessment (TDD Kata)

A Dart implementation of the **String Calculator Kata**, developed using strict **Test-Driven Development (TDD)**.  
This package reflects my approach to software craftsmanship. It documents how a simple problem — the String Calculator — can be solved using disciplined TDD, with every commit capturing a micro-step in the Red → Green → Refactor cycle.

---

## Features

- Returns `0` for an empty string
- Handles one or more comma-separated numbers
- Supports newline (`\n`) as an additional delimiter
- Allows custom delimiters defined in the format `//[delimiter]\n[numbers...]`
- Throws exception for negative numbers with all negatives listed  
  (`FormatException: negatives not allowed <list>`)
- Ignores numbers greater than 1000
- Supports delimiters of any length (`//[***]\n1***2***3`)
- Supports multiple delimiters, including multi-character (`//[*][%]\n1*2%3` and `//[***][%%]\n1***2%%3`)

---

## Getting started

### Prerequisites
- Dart SDK installed (>=3.0.0 <4.0.0)

### Setup
Clone the repo and install dependencies:
```
git clone https://github.com/<your-username>/string_calculator_assessment.git
cd string_calculator_assessment
dart pub get
```
To run the tests:

```
dart test -r expanded
```

