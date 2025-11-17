#import "@preview/showybox:2.0.4"
// #import "/typst/lib.typ": *
#set text(size: 6pt, font: ("Atkinson Hyperlegible Next", "Atkinson Hyperlegible"))

#let rainbow(content) = {
  set text(fill: gradient.linear(color.inferno.map(a => a.darken(30%))))
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

#let iff = $arrow.double.l.r$

#section(color: green.darken(30%))[serie matematiche][
  === Serie notevoli
  #table(columns: (1fr, 1fr))[
    === Serie armonica
    $ \sum 1/n^\lambda $

    converge per $ \lambda > 1 $
  ][
    === Serie con logaritmi
    $ \sum \dfrac{1}{n\,|\log n|^\lambda} \quad \text{e} \quad \sum \dfrac{1}{n \log^\lambda n} $

    converge per $ \lambda > 1 $
  ][
    === Serie telescopica
    $ \sum (b_{n+1} - b_n) = \lim_{n\to\infty} b_n - b_1 $

    se $ \lim_{n\to\infty} b_n = L $ allora la serie converge.
  ]
  === Criteri di convergenza $C(s_n) = s_n \text{ converge}$
  #table(columns: (1fr, 1fr), inset: 0pt)[
    #table[
      === Criterio del confronto
      Date due serie $ \sum a_n $ e $ \sum b_n $ tale che $ L = \lim_{n\to\infty} \dfrac{a_n}{b_n} $
      - $L \in \mathbb{R} \Rightarrow C(a_n) \iff C(b_n)$
      - $L = 0 \Rightarrow C(b_n) \Rightarrow C(a_n)$
      - $L = \infty \Rightarrow \neg C(b_n) \Rightarrow \neg C(a_n)$
    ]
  ][
    #table(columns: 1fr)[
      Condizioni comuni:
      - $L > 1$ diverge
      - $L < 1$ converge
    ][
      === Criterio del rapporto
      $L = \lim_{n\to\infty} \dfrac{a_{n+1}}{a_n}$
    ][
      === Criterio della radice
      $L = \lim_{n\to\infty} \sqrt[n]{a_n}$
    ][
      === Criterio di sostituzione
      $C(\sum a_n) \iff C(\sum 2^n a_{2n})$
    ]
  ]

  === Criteri per segno variabile
  #table(columns: (1fr, 1fr), inset: 0pt)[
    #table(columns: 1fr)[
      === Convergenza assoluta
      $C(\sum |a_n|) \Rightarrow C(\sum a_n)$
    ][
      === Criterio di Dirichlet
      $a_n, b_n$ sequenze:
      - $\sum a_n$ è limitata
      - $b_n \to 0$
      - $b_{n+1} \le b_n$
      Allora $\sum a_n b_n$ converge.
    ]
  ][
    #table(columns: 1fr)[
      === Criterio di Leibniz
      Per $\sum (-1)^n \alpha_n$:
      1. $\alpha_n > 0$ definitivamente
      2. $\alpha_n \to 0$
      3. $\alpha_{n+1} \le \alpha_n$
    ][
      === Teorema dei carabinieri
      Se $ a_n \le \phi_n \le b_n $ e $C(a_n)$ e $C(b_n)$ allora $C(\phi_n)$.
    ]
  ]
]

#section(color: purple.darken(50%))[definizioni][
  Da mettere:
  - definizione massimo, minimo, ecc.
  - definizione SUP, INF
  - definizione funzione Lipschitz

  === Funzioni $f:A \to B$

  #table(columns: (1fr, 1fr))[
    === Suriettiva
    $ \forall b \in B\ \exists a \in A \mid f(a) = b \quad \text{Im}(f) = B $

    #set align(center)
    #image("./assets/suriettiva.png", height: 30pt)
  ][
    === Iniettiva
    $ \forall a_1, a_2 \in A\ (a_1 \ne a_2 \Rightarrow f(a_1) \ne f(a_2)) $

    #set align(center)
    #image("./assets/iniettiva.png", height: 30pt)
  ]

  === Limiti
  #table(columns: (1fr, 1fr, 3.5fr))[
    $ x\to c $
  ][
    $ L \in \mathbb{R} $
  ][
    $ \forall \varepsilon > 0\ \exists \delta > 0\ \text{tale che}\ |x-c| < \delta \Rightarrow |f(x)-L| < \varepsilon$
  ][
    $ x\to c $
  ][
    $ L = \pm\infty $
  ][
    $ \forall M > 0\ \exists \delta > 0\ \text{tale che}\ 0<|x-c|<\delta \Rightarrow f(x) > M$
  ][
    $ x\to \pm\infty $
  ][
    $ L \in \mathbb{R} $
  ][
    $ \forall \varepsilon > 0\ \exists M > 0\ \text{tale che}\ |x| > M \Rightarrow |f(x)-L| < \varepsilon$
  ][
    $ x\to \pm\infty $
  ][
    $ L = \pm\infty $
  ][
    $ \forall M > 0\ \exists R > 0\ \text{tale che}\ |x| > R \Rightarrow |f(x)| > M$
  ]
]

#section(color: red.darken(50%))[limiti notevoli][
  #set text(size: 5pt)
  #table(columns: (1fr, 1fr, 1fr))[
    $ \lim_{x\to 0} \dfrac{\sin x}{x} = 1 $][
    $ \lim_{x\to 0} \dfrac{\log_a (1 + x)}{x} = \dfrac{1}{\ln a} $][
    $ \lim_{x\to\infty} \left(1 + \dfrac{1}{x}\right)^x = e $][
    $ \lim_{x\to 0} \dfrac{a^x - 1}{x} = \ln a $][
    $ \lim_{x\to 0} \dfrac{1 - \cos x}{x^2} = \dfrac{1}{2} $][
    $ \lim_{x\to 0} \dfrac{(1+x)^k - 1}{x} = k $][
    $ \lim_{x\to 0} \dfrac{\tan x}{x} = 1 $][
    $ \lim_{x\to 0} \dfrac{\arcsin x}{x} = 1 $
  ]
]

#section(color: aqua.darken(30%))[sviluppi di taylor][
  #table(columns: (auto, 1fr))[
    $ \sin(x) $
  ][
    $ x - \dfrac{x^3}{6} + \dfrac{x^5}{120} - \dfrac{x^7}{5040} + o(x^7) $
  ][
    $ \cos(x) $
  ][
    $ 1 - \dfrac{x^2}{2} + \dfrac{x^4}{24} - \dfrac{x^6}{720} + o(x^6) $
  ][
    $ \tan(x) $
  ][
    $ x + \dfrac{x^3}{3} + \dfrac{2}{15}x^5 + o(x^5) $
  ][
    $ \operatorname{sec}(x) $
  ][
    $ 1 + \dfrac{x^2}{2} + \dfrac{5}{24}x^4 + o(x^4) $
  ][
    $ \arcsin(x) $
  ][
    $ x + \dfrac{x^3}{6} + \dfrac{3}{40}x^5 + o(x^5) $
  ][
    $ \arctan(x) $
  ][
    $ x - \dfrac{x^3}{3} + \dfrac{x^5}{5} + o(x^5) $
  ][
    $ e^x $
  ][
    $ 1 + x + \dfrac{x^2}{2!} + \dfrac{x^3}{3!} + o(x^3) $
  ][
    $ \ln(1+x) $
  ][
    $ x - \dfrac{x^2}{2} + \dfrac{x^3}{3} + o(x^3) $
  ]
]

#section()[funzioni iperboliche][
  TODO: inserire definizioni e sviluppi di sinh, cosh, tanh, ecc.
]
#section[formule trigonometriche][TODO: aggiungere identità e formule principali]

#section[derivate / primitive][

  #let derivate = rgb("#78101c");
  #let integrali = rgb("#0a0885");

  #set text(5pt)
  #table(
    columns: (2fr, 1fr, 2fr),
    inset: 4pt,
    align: (horizon, horizon, horizon),

    table.header(
      align(center)[
        #text(
          fill: derivate,
          [*$\dfrac{d}{dx} f(x)$*],
        )],
      align(center)[*$f(x)$*],
      align(center)[
        #text(
          fill: integrali,
          [*$F(x)$*],
        )],
    ),
  )[
    #text(fill: derivate, $0$)
  ][
    $ a $
  ][
    #text(fill: integrali, $a x$)
  ][
    #text(fill: derivate, $a$)
  ][
    $ a x $
  ][
    #text(fill: integrali, $\dfrac{a x^2}{2}$)
  ][
    #text(fill: derivate, $a x^{a-1}$)
  ][
    $ x^a $
  ][
    #text(fill: integrali, $\dfrac{x^{a+1}}{a+1}$ \text{ con } $a \ne -1$)
  ][
    #text(fill: derivate, $e^x$)
  ][
    $ e^x $
  ][
    #text(fill: integrali, $e^x$)
  ][
    #text(fill: derivate, $\dfrac{1}{x}$)
  ][
    $ \ln x $
  ][
    #text(fill: integrali, $x(\ln x - 1)$)
  ][
    #text(fill: derivate, $-1/x^2$)
  ][
    $ 1/x $
  ][
    #text(fill: integrali, $\ln|x|$)
  ][
    #text(fill: derivate, $\cos x$)
  ][
    $ \sin x $
  ][
    #text(fill: integrali, $- \cos x$)
  ][
    #text(fill: derivate, $-\sin x$)
  ][
    $ \cos x $
  ][
    #text(fill: integrali, $\sin x$)
  ][
    #text(fill: derivate, $\dfrac{1}{\cos^2 x} = 1 + \tan^2 x$)
  ][
    $ \tan x $
  ][
    #text(fill: integrali, $- \ln|\cos x|$)
  ][
    #text(fill: derivate, $\dfrac{1}{\sqrt{1 - x^2}}$)
  ][
    $ \arcsin x $
  ][
    #text(fill: integrali, $x \arcsin x + \sqrt{1 - x^2}$)
  ][
    #text(fill: derivate, $-\dfrac{1}{\sqrt{1-x^2}}$)
  ][
    $ \arccos x $
  ][
    #text(fill: integrali, $x \arccos x - \sqrt{1- x^2}$)
  ][
    #text(fill: derivate, $\dfrac{1}{1+x^2}$)
  ][
    $ \arctan x $
  ][
    #text(fill: integrali, $x \arctan x - \dfrac{1}{2} \ln(1+x^2)$)
  ][
    #text(fill: derivate, $\cosh x$)
  ][
    $ \sinh x $
  ][
    #text(fill: integrali, $\cosh x$)
  ][
    #text(fill: derivate, $\sinh x$)
  ][
    $ \cosh x $
  ][
    #text(fill: integrali, $\sinh x$)
  ]
]

#section[integrali][
  Da mettere:
  - Proprietà degli integrali
  - Tecniche di integrazione (per parti, sostituzione, frazioni parziali)
  - Integrali trigonometrici e circolari
  - Solidi di rotazione e calcolo volume
  - Criteri di convergenza per integrali impropri
]

#section[numeri complessi][Da completare]
#section[equazioni differenziali][Da completare]

#pagebreak()

Grafici di funzione (insieme alle loro derivate) da inserire con piene notazioni:
- $e^x$
- $\log(x)$
- $\sin, \cos, \tan, \cot, \sec, \csc$
- $\arcsin, \arccos, \arctan$
- $\sinh, \cosh, \tanh$
