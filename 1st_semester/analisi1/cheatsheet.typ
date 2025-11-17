#import "@preview/showybox:2.0.4"
// #import "/typst/lib.typ": *

#set text(size: 6pt, font: "Liberation Sans")

#let rainbow(content) = {
  set text(fill: gradient.linear(..color.map.inferno.map(a => a.darken(30%))))
  box(content)
}

#let footer = [
  #pad(y: -2pt)[
    #h(1fr)
    _Made by #rainbow[Pietro Tamilia] (BRA1L0R) and #rainbow[Matteo Grande] (MattWaX)_
  ]
]

#set page(columns: 5, margin: 5pt, flipped: true, footer: footer)
#set columns(gutter: 0pt)

#place(
  top + center,
  float: true,
  scope: "parent",
  text(1.4em, weight: "bold")[
    Analisi 1 Cheatsheet
  ]
)

#let section(title, content, color: black, raw: false) = {
  set table(stroke: color)
  showybox.showybox(
    title: [*#upper(title)*],
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
  )[#content]
}

#let iff = $ \Rightarrow $

#section(color: green.darken(30%))[Serie matematiche][
=== Serie notevoli

#table(columns: (1fr, 1fr))[
  === Serie armonica
  $ \sum \frac{1}{n^\lambda} $
  converge per $ \lambda > 1 $
]

#table(columns: (1fr, 1fr))[
  === Serie armonica 2
  $ \sum \frac{1}{n |\log n|^\lambda} $  
  $ \sum \frac{1}{n \log_\lambda n} $
  converge per $ \lambda > 1 $
]

#table(columns: (1fr, 1fr))[
  === Serie telescopica
  $ \sum (b_{n+1} - b_n) = \lim_{n\to\infty} (b_{n+1} - b_n) $
  converge se $ \lim_{n\to\infty} b_n = L $
]

=== Criteri di convergenza $C(s_n) = s_n \text{ converge }$

#table(columns: (1fr, 1fr), inset: 0pt)[
  #row[
    #table[
      === Criterio del confronto
      Date due serie $ \sum a_n $ e $ \sum b_n $ tali che  
      $ L = \lim_{n\to\infty} \frac{a_n}{b_n} $
      - $L \in \mathbb{R} \Rightarrow C(a_n) \iff C(b_n)$
      - $L = 0 \Rightarrow C(b_n) \Rightarrow C(a_n)$
      - $L = \infty \Rightarrow \neg C(b_n) \Rightarrow \neg C(a_n)$
    ]
  ]
  #row[
    Condizioni comuni:
    - $L > 1$ diverge
    - $L < 1$ converge
  ]
  #row[
    === Criterio del rapporto
    $L = \lim_{n\to\infty} \frac{a_{n+1}}{a_n} $
  ]
  #row[
    === Criterio della radice
    $L = \lim_{n\to\infty} \sqrt[n]{a_n} $
  ]
  #row[
    === Criterio di sostituzione
    $C(\sum a_n) \iff C(\sum 2^n a_{2n})$
  ]
]

=== Criteri per serie a segno variabile

#table(columns: (1fr, 1fr), inset: 0pt)[
  #row[
    === Criterio conv. assoluta
    $C(\sum |a_n|) \Rightarrow C(\sum a_n)$
  ]
  #row[
    === Criterio di Dirichlet
    $a_n, b_n$ successioni:  
    - $ \sum a_n $ è limitata  
    - $ b_n \to 0 $  
    - $ b_{n+1} \le b_n $  
    Allora $ \sum a_n b_n $ converge
  ]
]

#table(columns: (1fr, 1fr), inset: 0pt)[
  #row[
    === Criterio di Leibnitz
    #grid(columns: (1fr, 1.2fr))[
      $ \sum (-1)^n \alpha_n $  
      1. $ \alpha_n > 0 $ definitivamente  
      2. $ \alpha_n \to 0 $  
      3. $ \alpha_{n+1} \le \alpha_n $
    ]
  ]
  #row[
    === Teorema dei carabinieri
    $ a_n \le \phi_n \le b_n $  
    $ C(a_n) \text{ e } C(b_n) \Rightarrow C(\phi_n) $
  ]
]

]

#section(color: purple.darken(50%))[Definizioni][
- Massimo, minimo, sup, inf, funzioni Lipschitziane ecc.

=== Funzioni $f:A \to B$

#table(columns: (1fr, 1fr))[
  === Suriettiva
  $ \forall b \in B, \exists a \in A | f(a) = b \Rightarrow \text{Im}(f) = B $
  #set align(center)
  #image("./assets/suriettiva.png", height: 30pt)
]

#table(columns: (1fr, 1fr))[
  === Iniettiva
  $ \forall a_1, a_2 \in A | a_1 \neq a_2 \Rightarrow f(a_1) \neq f(a_2) $
  #set align(center)
  #image("./assets/iniettiva.png", height: 30pt)
]

=== Limiti

#table(columns: (1fr, 1fr, 3.5fr))[
  $ x\to c $  
  $ L \in \mathbb{R} $  
  $ \forall \epsilon>0, \exists \delta>0: |x-c| < \delta \Rightarrow |f(x)-L|<\epsilon $
]

#table(columns: (1fr, 1fr, 3.5fr))[
  $ x \to c $  
  $ L = \pm \infty $  
  $ \forall M>0, \exists \delta>0: |x-c| < \delta \Rightarrow \pm f(x) > M $
]

#table(columns: (1fr, 1fr, 3.5fr))[
  $ x \to \pm \infty $  
  $ L \in \mathbb{R} $  
  $ \forall \epsilon>0, \exists M>0: |x| > M \Rightarrow |f(x)-L|<\epsilon $
]

#table(columns: (1fr, 1fr, 3.5fr))[
  $ x \to \pm \infty $  
  $ L = \pm \infty $  
  $ \forall M>0, \exists R>0: |x| > R \Rightarrow \pm f(x) > M $
]
