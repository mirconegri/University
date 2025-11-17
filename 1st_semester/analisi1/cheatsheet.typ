#import "@preview/showybox:2.0.4"
// #import "/typst/lib.typ": *
#set text(size: 6pt, font: ("Atkinson Hyperlegible Next", "Atkinson Hyperlegible"))

let rainbow(content) = {
  set text(fill: gradient.linear(..color.map.inferno.map(a => a.darken(30%))))
  box(content)
}

let footer = [
  pad(y: -2pt)[
    h(1fr)
    _Made by rainbow[Pietro Tamilia] (BRA1L0R) and rainbow[Matteo Grande] (MattWaX)_
  ]
]

set page(columns: 5, margin: 5pt, flipped: true, footer: footer)
set columns(gutter: 0pt)
place(
  top + center,
  float: true,
  scope: "parent",
  text(1.4em, weight: "bold")[
    Analisi 1 Cheatsheet
  ],
)

let section(title, content, color: black, raw: false) = {
  set table(stroke: color)

  showybox.showybox(
    title: [*upper(title)*],
    frame: (
      radius: 1pt,
      title-inset: 1pt,
      inset: if raw { 0pt } else { 4pt },
      title-color: color,
      border-color: color,
    ),
    title-style: (
      weight: "medium",
      sep-thickness: 0pt,
    ),
    below: 0pt,
  )[content]
}

let iff = $arrow.double.l.r$

section("serie matematiche", [
  === Serie notevoli
  table(columns: (1fr, 1fr))[
    === Serie armonica
    $ \sum 1/n^\lambda $

    converge per $\lambda > 1$
  ][
    === Serie armonica 2
    $ \sum 1/(n |\log n|^\lambda) \& \sum 1/(n \log_\lambda n) $

    converge per $\lambda > 1$
  ][
    === Serie telescopica
    $ \sum (b_{n+1} - b_n) = \lim_{n \to \infty} (b_{n+1} - b_n) $
    converge se $ \lim_{n\to\infty} b_n = L$
  ]

  === Criteri di convergenza
  table(columns: (1fr, 1fr), inset: 0pt)[
    table[
      === Criterio del confronto
      Date due serie $ \sum a_n$ e $ \sum b_n$ tale che $L = \lim_{n\to\infty} (a_n)/(b_n)$
      - $L \in \mathbb{R} \Rightarrow C(a_n) \iff C(b_n)$
      - $L = 0 \Rightarrow C(b_n) \Rightarrow C(a_n)$
      - $L = \infty \Rightarrow \neg C(b_n) \Rightarrow \neg C(a_n)$
    ]
  ][
    table(columns: 1fr)[
      Condizioni comuni:
      - $L > 1$ diverge
      - $L < 1$ converge
    ][
      === Criterio del rapporto
      $L = \lim_{n\to\infty} a_{n+1}/a_n$
    ][
      === Criterio della radice
      $L = \lim_{n\to\infty} \sqrt[n]{a_n}$
    ][
      === Criterio di Sostituzione
      $C(\sum a_n) \iff C(\sum 2^n a_{2n})$
    ]
  ]

  === Criteri di convergenza per segno variabile
  table(columns: (1fr, 1fr), inset: 0pt)[
    table(columns: 1fr)[
      === Criterio conv. assoluta
      $C(\sum |a_n|) \Rightarrow C(\sum a_n)$
    ][
      === Criterio di Dirichlet
      $a_n, b_n$ successioni:
      - $\sum a_n$ è limitata
      - $b_n \to 0$
      - $b_{n+1} \le b_n$
      Allora $\sum a_n b_n$ converge
    ]
  ][
    table(columns: 1fr)[
      === Criterio di Leibnitz
      grid(columns: (1fr, 1.2fr))[$\sum (-1)^n \alpha_n$][
        1. $\alpha_n > 0$ definitivamente
        2. $\alpha_n \to 0$
        3. $\alpha_{n+1} \le \alpha_n$
      ]
    ][
      === Teorema dei carabinieri
      $ a_n \le \phi_n \le b_n $
      $C(a_n)$ e $C(b_n) \Rightarrow C(\phi_n)$
    ]
  ]
])

section("definizioni", [
  showybox(
    title: "Massimo, minimo, estremi",
    body: [
      *Massimo*: `a` è massimo per `f` se `f(a) ≥ f(x)` per ogni `x` del dominio.  
      *Massimo locale*: vale la stessa proprietà ma solo in un intorno di `a`.

      *Minimo* e *minimo locale*: analoghi.

      *Estremi*: punti di massimo o minimo (anche locali).
    ]
  )

  showybox(
    title: "Sup e Inf",
    body: [
      `sup A`: più piccolo maggiorante di `A`.  
      `inf A`: più grande minorante di `A`.  

      Possono NON appartenere ad `A`.  
      Se `A` è limitato sopra o sotto, `sup` e `inf` esistono sempre (completezza di ℝ).
    ]
  )

  showybox(
    title: "Funzioni Lipschitziane",
    body: [
      `f` è *Lipschitz* su `I` se  
      ```typst
      ∃K>0 : |f(x)-f(y)| ≤ K|x-y|
      ```
      Le funzioni Lipschitz sono uniformemente continue.
    ]
  )
])

section("integrali", [
  showybox(
    title: "Proprietà degli integrali",
    body: [
      - *Linearità*: `∫(af + bg) = a∫f + b∫g`
      - *Monotonia*: `f ≤ g ⇒ ∫f ≤ ∫g`
      - *Additività*: `∫_a^c f = ∫_a^b f + ∫_b^c f`
      - Continuità ⇒ integrabilità  
      - Limitata con un numero finito di discontinuità ⇒ integrabile
    ]
  )

  showybox(
    title: "Tecniche principali",
    body: [
      *Integrazione per parti*  
      ```typst
      ∫u dv = uv − ∫v du
      ```

      *Sostituzione*  
      ```typst
      x = g(t), dx = g'(t) dt
      ```

      *Fratti razionali*  
      Scomposizione in fratti semplici quando `deg P < deg Q`.

      *Razionali in sin/cos*  
      Sostituzione di Weierstrass:  
      ```typst
      t = tan(x/2)
      ```
    ]
  )

  showybox(
    title: "Integrali impropri",
    body: [
      *Tipo 1 — intervalli infiniti*  
      ```typst
      ∫_a^∞ f convergente ⇔ lim_{b→∞} ∫_a^b f esiste
      ```

      *Tipo 2 — discontinuità*  
      ```typst
      ∫_a^b f convergente ⇔ lim_{x→c^-} ∫_a^x f esiste
      ```

      *Criterio del confronto*  
      - Se `0 ≤ f ≤ g` e `∫g` converge → `∫f` converge  
      - Se `f ≥ g ≥ 0` e `∫g` diverge → `∫f` diverge
    ]
  )

  showybox(
    title: "Integrali circolari",
    body: [
      Utili quando compaiono:  
      `√(a² − x²)`, `√(a² + x²)`, `√(x² − a²)`.

      - `x = a sin t` → `√(a² − x²)`  
      - `x = a tan t` → `√(a² + x²)`  
      - `x = a cosh t` → `√(x² − a²)`
    ]
  )

  showybox(
    title: "Solidi per integrazione",
    body: [
      *Metodo dei dischi*  
      ```typst
      V = π ∫_a^b (f(x))² dx
      ```

      *Metodo dei gusci cilindrici*  
      ```typst
      V = 2π ∫_a^b x f(x) dx
      ```
    ]
  )
])
