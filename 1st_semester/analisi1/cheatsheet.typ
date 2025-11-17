#import "@preview/showybox:2.0.4"

// FONT compatibile fallback
#set text(size: 6pt, font: ("Atkinson Hyperlegible", "sans-serif"))

// Rainbow macro
#let rainbow(content) = {
  set text(fill: gradient.linear(..color.map.inferno.map(a => a.darken(30%))))
  box(content)
}

// Footer
#let footer = [
  #pad(y: -2pt)[
    #h(1fr)
    _Made by #rainbow[Pietro Tamilia] (BRA1L0R) and #rainbow[Matteo Grande] (MattWaX)_
  ]
]

// Impostazioni pagina
#set page(columns: 5, margin: 5pt, flipped: true, footer: footer)
#set columns(gutter: 0pt)
#place(
  top + center,
  float: true,
  scope: "parent",
  text(1.4em, weight: "bold")[Analisi 1 Cheatsheet]
)

// Sezione helper
#let section(title, content, color: black, raw: false) = {
  set table(stroke: color)
  #showybox(
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
  )[
    #content
  ]
}

// Freccia doppia
#let iff = $arrow.double.l.r$

// ==========================
// SEZIONE INTEGRALI
// ==========================
#section[color: blue.darken(30%)][Integrali][
  #showybox(
    title: "Massimo, minimo, estremi",
    body: [
      *Massimo*: `a` è massimo per `f` se `f(a) ≥ f(x)` per ogni `x` del dominio.  
      *Massimo locale*: vale la stessa proprietà ma solo in un intorno di `a`.

      *Minimo* e *minimo locale*: analoghi.

      *Estremi*: punti di massimo o minimo (anche locali).
    ]
  )

  #showybox(
    title: "Sup e Inf",
    body: [
      `sup A`: più piccolo maggiorante di `A`.  
      `inf A`: più grande minorante di `A`.  

      Possono NON appartenere ad `A`.  
      Se `A` è limitato sopra o sotto, `sup` e `inf` esistono sempre (completezza di ℝ).
    ]
  )

  #showybox(
    title: "Funzioni Lipschitziane",
    body: [
      `f` è *Lipschitz* su `I` se  
      ```typst
      ∃K>0 : |f(x)-f(y)| ≤ K|x-y|
      ```
      Le funzioni Lipschitz sono uniformemente continue.
    ]
  )

  #showybox(
    title: "Proprietà degli integrali",
    body: [
      - *Linearità*: `∫(af + bg) = a∫f + b∫g`
      - *Monotonia*: `f ≤ g ⇒ ∫f ≤ ∫g`
      - *Additività*: `∫_a^c f = ∫_a^b f + ∫_b^c f`
      - Continuità ⇒ integrabilità  
      - Limitata con un numero finito di discontinuità ⇒ integrabile
    ]
  )

  #showybox(
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

  #showybox(
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

  #showybox(
    title: "Integrali circolari",
    body: [
      Utili quando compaiono:  
      `√(a² − x²)`, `√(a² + x²)`, `√(x² − a²)`.

      - `x = a sin t` → `√(a² − x²)`  
      - `x = a tan t` → `√(a² + x²)`  
      - `x = a cosh t` → `√(x² − a²)`
    ]
  )

  #showybox(
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
]
