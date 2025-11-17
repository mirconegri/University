#set text(size: 6pt, font: ("Atkinson Hyperlegible Next", "Atkinson Hyperlegible"))

#section(color: purple.darken(50%))[
  Definizioni

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

  #table(columns: (1fr, 1fr))[
    === Biettiva
    Funzione suriettiva + iniettiva
  ]

  === Limiti

  #table(columns: (1fr, 1fr, 3.5fr))[
    $ x \to c $  
    $ L \in \mathbb{R} $  
    $ \forall \epsilon>0, \exists \delta>0: |x-c| < \delta \Rightarrow |f(x)-L|<\epsilon $
  ]

  #table(columns: (1fr, 1fr, 3.5fr))[
    $ x \to c $  
    $ L = \pm \infty $  
    $ \forall M>0, \exists \delta>0: |x-c| < \delta \Rightarrow \pm f(x) > M $
  ]

  === Serie e Successioni

  $ \sum_{n=1}^{\infty} \frac{1}{n^\lambda} $ convergente se $\lambda>1$

  #table(columns: (1fr, 1fr))[
    === Monotonia
    Successioni crescenti, decrescenti
  ]

  === Continuità e Derivate

  $ f $ continua se $ \lim_{x\to c} f(x) = f(c) $

  $ f'(x) = \lim_{h\to 0} \frac{f(x+h)-f(x)}{h} $

  #table(columns: (1fr, 1fr))[
    === Derivate notevoli
    $ (x^n)' = n x^{n-1} $, $ (\sin x)' = \cos x $, $ (\cos x)' = -\sin x $
  ]
]

#section(color: green.darken(40%))[
  Teoremi Principali

  === Teorema di Bolzano
  Se $f$ continua su $[a,b]$ e $f(a)f(b)<0$ allora $\exists c\in(a,b): f(c)=0$

  === Teorema di Weierstrass
  $f$ continua su chiuso e limitato $\Rightarrow f$ ammette massimo e minimo
]

#section(color: blue.darken(40%))[
  Esempi e Applicazioni

  #table(columns: (1fr, 2fr))[
    === Limite noto
    $ \lim_{x\to 0} \frac{\sin x}{x} = 1 $
  ]

  #table(columns: (1fr, 2fr))[
    === Derivata nota
    $ (e^x)' = e^x $
  ]
]
