# 🎓 University Archive

[

![Java](https://img.shields.io/badge/Language-Java-b07219?style=for-the-badge)

](https://www.java.com/)
[

![C++](https://img.shields.io/badge/Language-C%2B%2B-f34b7d?style=for-the-badge)

](https://isocpp.org/)
[

![ML](https://img.shields.io/badge/Language-ML-dc566d?style=for-the-badge)

](https://smlfamily.github.io/)
[

![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)

](LICENSE)

A personal university archive collecting notes, LaTeX cheat sheets, and study materials for Computer Science coursework at the Università degli Studi di Trento — organized by semester and course.

## Table of Contents

- [Features](#features)
- [Tech Stack](#tech-stack)
- [Getting Started](#getting-started)
- [Usage](#usage)
- [Configuration and Environment](#configuration-and-environment)
- [Contributing](#contributing)
- [License](#license)

## Features

- Notes and course materials organized by semester (1° and 2° Semestre)
- Standalone LaTeX **schemi** (structured cheat sheets) and **riassunti** (summaries) for each course, compiled to PDF
- Per-course sub-archives with their own README index — currently available for:
  - **Fondamenti Matematici** — set theory, induction, modular arithmetic, Euclidean division, proofs
  - **Calcolatori (Computer Architecture)** — binary arithmetic, RISC-V/x86-64/ARM assembly, pipelining, memory hierarchy, I/O
  - **Probabilità e Statistica** — axioms, combinatorics, random variables, notable distributions, inference/MLE
  - **Programmazione Funzionale** — ML basics, recursion/pattern matching, higher-order functions, ADTs, lambda calculus, Prolog
- Each cheat sheet PDF links directly to the relevant page range for fast lookup (e.g. `schemi_calcolatori.pdf#page=20`)
- Dual **light/dark PDF variants** for the schemi documents, toggled via a LaTeX conditional macro (`\islight`) rather than maintaining two separate source files

## Tech Stack

- **Languages covered in coursework:** Java, C++, PolyML (Standard ML)
- **Documentation format:** LaTeX (schemi and riassunti), compiled to PDF
- **Notes format:** Markdown (per-course README indices), plus raw course materials (PDFs, images, code)

## Getting Started

### Prerequisites

- Git
- A PDF reader
- *(Optional, only if you want to recompile the LaTeX sources)* A LaTeX distribution (e.g. TeX Live, MiKTeX) with a standard package set: `geometry`, `hyperref`, `booktabs`, `tocloft`, `xcolor`, `microtype`

### Installation

```bash
git clone https://github.com/mirconegri/University.git
cd University
```

No build step is required to read the existing PDFs — cloning is enough.

## Usage

Browse by semester and course folder:

```
1st_semester/
  ├── analisi_1/
  ├── prog_1/
  └── GAL/
2nd_semester/
  ├── P2/
  ├── calcolatori/
  ├── fondamenti/
  ├── funzionale/
  └── statistica/
```

Each course folder may contain a `schemi/` subfolder with its own README index and compiled PDF cheat sheets. Open the PDFs directly, or follow the page-anchored links in each course's `schemi/README.md` to jump straight to a topic.

To recompile a LaTeX source (e.g. after editing `schemi_p2.tex`):

```bash
cd 2nd_semester/P2/schemi
pdflatex schemi_p2.tex
```

To generate the dark-mode variant of a schemi document, comment out (or leave undefined) the `\def\islight{true}` line at the top of the `.tex` file before compiling; defining it produces the light-mode version instead.

## Configuration and Environment

This repository requires no environment variables or runtime configuration. The only "configuration" is the LaTeX `\islight` conditional described above, controlled per-document by editing the source file directly before compilation.

## Contributing

This is a personal, educational archive, but corrections and suggestions are welcome:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/your-feature`)
3. Commit your changes
4. Open a Pull Request

Found an error in the notes or a broken link? Open an [Issue](https://github.com/mirconegri/University/issues).

## License

MIT License © 2026 `Mirco Negri` — see [LICENSE](LICENSE) file for details.

### 👤 Author

`Mirco Negri`
GitHub: [https://github.com/mirconegri](https://github.com/mirconegri)