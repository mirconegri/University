#import "@preview/showybox:2.0.4"

#set text(size: 6pt, font: "Inter")

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
  ],
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

#section(color: green.darken(30%))["Serie matematiche"][
  === Serie notevoli
  #table(columns: (1fr, 1fr))[
    === Serie armonica
    $ \sum_{n=1}^\infty 1/n^\lambda $
    converge per $ \lambda > 1 $
  ][
    === Serie armonica 2
    $ \sum_{n=2}^\infty 1/(n (\log n)^\lambda) $  
    converge per $ \lambda > 1 $
  ][
    === Serie telescopica
    $ \sum_{n=1}^\infty (b_{n+1} - b_n) = \lim_{n \to \infty} (b_{n+1} - b_1) $  
    converge se $ \lim_{n\to\infty} b_n = L $
  ]
  === Criteri di convergenza
  #table(columns: (1fr, 1fr), inset: 0pt)[
    #table[
      === Criterio del confronto
      Date due serie $ \sum a_n $ e $ \sum b_n $ con
      $ L = \lim_{n \to \infty} a_n / b_n $:
      - $ L \in \mathbb{R}^+ \Rightarrow C(a_n) \iff C(b_n) $
      - $ L = 0 \Rightarrow C(b_n) \Rightarrow C(a_n) $
      - $ L = \infty \Rightarrow \neg C(b_n) \Rightarrow \neg C(a_n) $
    ]
  ][
    #table(columns: 1fr)[
      Condizioni comuni:
      - $ L > 1 \Rightarrow $ diverge
      - $ L < 1 \Rightarrow $ converge
    ][
      === Criterio del rapporto
      $ L = \lim_{n\to\infty} a_{n+1}/a_n $
    ][
      === Criterio della radice
      $ L = \lim_{n\to\infty} \sqrt[n]{a_n} $
    ][
      === Criterio di Sostituzione
      $ C(\sum a_n) \iff C(\sum 2^n a_{2n}) $
    ]
  ]
]

#section(color: purple.darken(50%))["Definizioni"][
  === Funzioni $f: A \to B$
  #table(columns: (1fr, 1fr))[
    === Suriettiva
    $ \forall b \in B \; \exists a \in A : f(a) = b, \; \text{Im}(f) = B $
    #set align(center)
    #image("./assets/suriettiva.png", height: 30pt)
  ][
    === Iniettiva
    $ \forall a_1,a_2 \in A: a_1 \neq a_2 \Rightarrow f(a_1) \neq f(a_2) $
    #set align(center)
    #image("./assets/iniettiva.png", height: 30pt)
  ]
]

#section(color: red.darken(50%))["Limiti notevoli"][
  #set text(size: 5pt)
  #table(columns: (1fr, 1fr, 1fr))[
    $ \lim_{x \to 0} \frac{\sin x}{x} = 1 $
  ][
    $ \lim_{x \to 0} \frac{\log_a (1+x)}{x} = \frac{1}{\ln a} $
  ][
    $ \lim_{x \to \infty} (1+1/x)^x = e $
  ][
    $ \lim_{x \to 0} \frac{a^x - 1}{x} = \ln a $
  ][
    $ \lim_{x \to 0} \frac{1-\cos x}{x^2} = 1/2 $
  ][
    $ \lim_{x \to 0} \frac{(1+x)^k - 1}{x} = k $
  ][
    $ \lim_{x \to 0} \frac{\tan x}{x} = 1 $
  ][
    $ \lim_{x \to 0} \frac{\arcsin x}{x} = 1 $
  ]
]

#section(color: aqua.darken(30%))["Sviluppi di Taylor"][
  #table(columns: (auto, 1fr))[
    $ \sin x $][$ x - x^3/6 + x^5/120 - x^7/5040 + o(x^7) $]
  ][
    $ \cos x $][$ 1 - x^2/2 + x^4/24 - x^6/720 + x^8/40320 + o(x^8) $]
  ][
    $ \tan x $][$ x + x^3/3 + 2/15 x^5 + o(x^5) $]
  ][
    $ e^x $][$ 1 + x + x^2/2! + x^3/3! + x^4/4! + o(x^4) $]
  ][
    $ \ln(1+x) $][$ x - x^2/2 + x^3/3 - x^4/4 + x^5/5 + o(x^5) $]
]

#section["Funzioni iperboliche"][
  TODO
]

#section["Formule trigonometriche"][
  TODO
]

#section["Derivate / primitive"][
  TODO
]

#section["Integrali"][
  TODO
]
