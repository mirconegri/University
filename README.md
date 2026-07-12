# 🎓 University Archive

[![Java](https://img.shields.io/badge/Language-Java-b07219?style=for-the-badge)](https://www.java.com/)
[![C++](https://img.shields.io/badge/Language-C%2B%2B-f34b7d?style=for-the-badge)](https://isocpp.org/)
[![ML](https://img.shields.io/badge/Language-ML-dc566d?style=for-the-badge)](https://smlfamily.github.io/)
[![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)](LICENSE)

A structured archive of notes, LaTeX cheat sheets, and study materials for Computer Science coursework at the Università degli Studi di Trento — organized by semester and course.

Built because university materials tend to accumulate across download folders, cloud drives, and notebook apps with no consistent structure. Keeping everything version-controlled in one place makes it searchable, linkable, and reproducible — any cheat sheet can be recompiled from source, and page-anchored links in each course index let you jump directly to a topic without scrolling.

## Table of Contents

- [Features](#features)
- [Direct Links to Schemi](#direct-links-to-schemi)
- [Tech Stack](#tech-stack)
- [Getting Started](#getting-started)
- [Usage](#usage)
- [Configuration and Environment](#configuration-and-environment)
- [Contributing](#contributing)
- [License](#license)

## Features

- Materials organized by semester and course — consistent folder structure across all subjects
- LaTeX cheat sheets (schemi) and summaries (riassunti) compiled to PDF, one per course
- Per-course README indexes with page-anchored links — jump directly to a specific topic in a PDF (e.g. `schemi_calcolatori.pdf#page=20`)
- Dual light and dark PDF variants for cheat sheets, toggled via a LaTeX conditional macro (`\islight`) — one source file, two outputs
- Currently covers four second-semester courses:
  - **Fondamenti Matematici** — set theory, induction, modular arithmetic, Euclidean division, proof techniques
  - **Calcolatori (Computer Architecture)** — binary arithmetic, RISC-V/x86-64/ARM assembly, pipelining, memory hierarchy, I/O
  - **Probabilità e Statistica** — axioms, combinatorics, random variables, notable distributions, MLE and inference
  - **Programmazione Funzionale** — PolyML basics, recursion, pattern matching, higher-order functions, ADTs, lambda calculus, Prolog
 
## 📑 Direct Links to Schemi

Jump straight to the LaTeX cheat sheets and compiled PDFs for each course:

**1st Semester**
* [Analisi 1](./1st_semester/analisi_1/schemi)
* [Programmazione 1](./1st_semester/prog_1/schemi)
* [Geometria e Algebra Lineare (GAL)](./1st_semester/GAL/schemi)

**2nd Semester**
* [Programmazione 2 (P2)](./2nd_semester/P2/schemi)
* [Calcolatori](./2nd_semester/calcolatori/schemi)
* [Fondamenti Matematici](./2nd_semester/fondamenti/schemi)
* [Programmazione Funzionale](./2nd_semester/funzionale/schemi)
* [Probabilità e Statistica](./2nd_semester/statistica/schemi)

## Tech Stack

- **Languages covered in coursework:** Java, C++, PolyML (Standard ML)
- **Documentation format:** LaTeX — compiled to PDF using `pdflatex`
- **Index format:** Markdown per-course README files with page-anchored PDF links
- **LaTeX packages used:** `geometry`, `hyperref`, `booktabs`, `tocloft`, `xcolor`, `microtype`

## Getting Started

### Prerequisites

- Git
- A PDF reader for viewing compiled output
- *(Optional — only if recompiling LaTeX sources)* A LaTeX distribution such as TeX Live or MiKTeX with standard packages

### Installation

```bash
git clone https://github.com/mirconegri/University.git
cd University
```

No build step is required to read the existing PDFs.

## Usage

Browse by semester and course:

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

Each course folder may contain a `schemi/` subfolder with a README index and compiled PDFs. Follow the page-anchored links in each index to jump directly to a topic, or open the PDFs directly.

To recompile a LaTeX source after editing:

```bash
cd 2nd_semester/P2/schemi
pdflatex schemi_p2.tex
```

To generate the light-mode variant, ensure `\def\islight{true}` is defined at the top of the `.tex` file before compiling. Comment it out or remove it to produce the dark-mode variant instead.

## Configuration and Environment

No environment variables or runtime configuration required. The only configurable element is the `\islight` LaTeX macro described above, edited directly in the source file before compilation.

## Contributing

This is a personal archive, but corrections to notes or broken links are welcome:

1. Fork the repository
2. Create a feature branch (`git checkout -b fix/your-fix`)
3. Commit your changes
4. Open a Pull Request

For errors in the notes or broken page anchors, open an [Issue](https://github.com/mirconegri/University/issues).

### Author

**Mirco Negri** — Computer Science @ UniTrento

[![Portfolio](https://img.shields.io/badge/Portfolio-00599C?style=for-the-badge&logo=globe&logoColor=white)](https://mirconegri.github.io/Portfolio/)
[![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/mirconegri)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/mirco-negri-263810225)
[![Gmail](https://img.shields.io/badge/Gmail-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:mirconegri06@gmail.com)

## License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.
