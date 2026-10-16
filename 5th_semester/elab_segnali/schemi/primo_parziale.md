# FONDAMENTI DI ELABORAZIONE DEI SEGNALI — GUIDA COMPLETA PER IL PARZIALE DEL 5 NOVEMBRE

**Corso:** Fondamenti di Comunicazione – Mod.1 / Fondamenti di Elaborazione del Segnale  
**Docenti:** Francesco De Natale, Andrea Rosani (UniTN)  
**Prova:** Parziale del 5 novembre  
**Materiale di riferimento:** FElS-1, FElS-2, FElS-3, FElS-4, FElS-5, FElS-6, Raccolta esercizi, Prova parziale svolta

---

# 1. INDICE GENERALE

1. [Piano di studio giorno per giorno](#2-piano-di-studio)
2. [Teoria essenziale](#3-teoria-essenziale)
   - 3.1 Segnali elementari
   - 3.2 Energia, potenza, valor medio, varianza
   - 3.3 Trasformazioni temporali
   - 3.4 Simmetrie, causalità, correlazione
   - 3.5 Sistemi LTI e convoluzione
   - 3.6 Serie di Fourier
   - 3.7 Trasformata di Fourier
3. [Esercizi svolti completi](#4-esercizi-svolti)
   - 4.1 Esercizi da "01 RACCOLTA esercizi ANALOGICA TEMPO"
   - 4.2 Esercizi dalla provetta "FELS-1Provetta-soluzioni"
4. [Mappe concettuali](#5-mappe-concettuali)
5. [Formulario essenziale](#6-formulario-essenziale)
6. [Guida "Come superare il parziale"](#7-come-superare-il-parziale)
7. [Simulazione d'esame](#8-simulazione-desame)

---

# 2. PIANO DI STUDIO

| Giorno | Data | Teoria | Esercizi |
|--------|------|--------|----------|
| 1 | 16 ott | FElS-1 Introduzione; FElS-2 segnali elementari (Π, Λ, u, δ, sinc, sgn), trasformazioni (ritardo, anticipo, ribaltamento, scala) | Es. 1, 3 raccolta |
| 2 | 17 ott | FElS-2 energia/potenza, segnali di energia/potenza | Es. 4, 5 raccolta |
| 3 | 18 ott | FElS-2 valor medio, varianza, simmetrie pari/dispari | Es. 6 raccolta |
| 4 | 19 ott | FElS-3 sistemi LTI: linearità, tempo-invarianza, risposta impulsiva | Es. LTI 1–2 raccolta |
| 5 | 20 ott | FElS-3 convoluzione: definizione, proprietà, convoluzioni notevoli | Es. LTI 3–5 raccolta |
| 6 | 21 ott | Convoluzione grafica: ribaltamento, scorrimento, integrazione | Es. conv. 1–2 |
| 7 | 22 ott | Convoluzione con impulsi, rettangoli, triangoli | Es. conv. 3–4 |
| 8 | 23 ott | Convoluzione: applicazioni a sistemi LTI | Es. conv. 5–6 |
| 9 | 24 ott | Risposta impulsiva e causale | Es. conv. 7–8 |
| 10 | 25 ott | Sistemi LTI: risposta al gradino, esponenziale | Es. conv. 9 |
| 11 | 26 ott | FElS-2 correlazione e autocorrelazione | Es. 7, 7bis raccolta |
| 12 | 27 ott | FElS-4 Serie di Fourier: definizione, coefficienti | Teoria + esempi |
| 13 | 28 ott | FElS-4 Parseval, Gibbs, simmetrie | Provetta es. 2; es. 2 raccolta |
| 14 | 29 ott | FElS-5 Trasformata di Fourier: definizione, proprietà base | Teoria |
| 15 | 30 ott | FElS-5 proprietà: linearità, scala, ritardo, dualità | Esempi |
| 16 | 31 ott | FElS-5 derivata, integrale, convoluzione, prodotto, modulazione | Provetta es. 4 |
| 17 | 1 nov | FElS-6 sistemi in frequenza, filtri ideali, banda | Provetta es. 3 |
| 18 | 2 nov | Ripasso generale | Provetta es. 1; es. 1–2 raccolta |
| 19 | 3 nov | Simulazione completa | Simulazione d'esame |
| 20 | 4 nov | Correzione errori, formulario | Ripasso mirato |
| 21 | 5 nov | Pre-esame: ripasso leggero | Formulario e strategie |

**Priorità:** energia/potenza → trasformazioni → convoluzione → serie/trasformata → sistemi LTI.  
**Tempo giornaliero consigliato:** 3–4 ore (1.5 teoria + 1.5 esercizi + 0.5 ripasso).

---

# 3. TEORIA ESSENZIALE

## 3.1 Segnali elementari (FElS-2)

### Funzione rettangolo simmetrico
\[
\Pi\left(\frac{t}{T}\right)=
\begin{cases}
1 & |t|\le T/2\\
0 & \text{altrove}
\end{cases}
\]
Funzione reale a simmetria pari. Ampiezza unitaria, durata \(T\).

### Funzione triangolo simmetrico
\[
\Lambda\left(\frac{t}{T}\right)=
\begin{cases}
1-\frac{|t|}{T/2} & |t|\le T/2\\
0 & \text{altrove}
\end{cases}
\]
Triangolo isoscele, simmetria pari, picco 1 in \(t=0\), durata \(T\).

### Funzione gradino unitario
\[
u(t)=
\begin{cases}
1 & t\ge 0\\
0 & t<0
\end{cases}
\]

### Funzione segno
\[
\operatorname{sgn}(t)=
\begin{cases}
+1 & t>0\\
-1 & t<0
\end{cases}
\qquad
\operatorname{sgn}(0)=\pm 1 \text{ (convenzione)}
\]

### Funzione sinc
\[
\operatorname{sinc}(x)=\frac{\sin(\pi x)}{\pi x}
\]
Reale, pari, \(\operatorname{sinc}(0)=1\) (per limite), si annulla per \(x=k\in\mathbb{Z}\setminus\{0\}\).

### Delta di Dirac
Funzione generalizzata definita da:
\[
\int_{-\infty}^{+\infty}f(t)\delta(t)\,dt=f(0)
\]
Rappresentazione come limite:
\[
\delta(t)=\lim_{T\to 0}\frac{1}{T}\Pi\left(\frac{t}{T}\right)
\]
Area unitaria, ampiezza infinita in 0.

**Proprietà utili:**
\[
\int_{-\infty}^{t}\delta(\tau)\,d\tau=u(t)
\qquad
\frac{d}{dt}u(t)=\delta(t)
\]
\[
\delta(t-t_0): \text{ impulso centrato in } t_0
\]

### Impulso traslato e doppietto
\[
\delta(t-t_0)\leftrightarrow e^{-j2\pi f t_0}
\]
Derivando un impulso si ottiene un **doppietto** (coppia di impulsi opposti centrati in 0).

---

## 3.2 Energia, potenza, valor medio, varianza (FElS-2)

### Energia
\[
E_x=\int_{-\infty}^{+\infty}|x(t)|^2\,dt \quad [\text{J}]
\]

### Potenza media
\[
P_x=\lim_{T\to\infty}\frac{1}{T}\int_{-T/2}^{T/2}|x(t)|^2\,dt \quad [\text{W}]
\]

### Classificazione
- **Segnale di energia:** \(E_x<\infty\), \(P_x=0\). Esempi: segnali a durata finita, esponenziali finestrati.
- **Segnale di potenza:** \(P_x>0\), \(E_x=\infty\). Esempi: segnali periodici, segnali a valor medio non nullo, segnali aleatori.
- Le due categorie sono mutuamente esclusive.

### Valor medio
\[
\bar{x}=\lim_{T\to\infty}\frac{1}{T}\int_{-T/2}^{T/2}x(t)\,dt
\]
Per segnali periodici di periodo \(T_0\):
\[
\bar{x}=\frac{1}{T_0}\int_{-T_0/2}^{T_0/2}x(t)\,dt
\]

### Valore quadratico medio
\[
\overline{x^2}=\lim_{T\to\infty}\frac{1}{T}\int_{-T/2}^{T/2}x^2(t)\,dt=P_x
\]

### Varianza
\[
\sigma_x^2=\overline{x^2}-\bar{x}^2
\]
Se \(\bar{x}=0\), \(\sigma_x^2=\overline{x^2}\).

### Segnali periodici
\[
P_x=\frac{1}{T_0}\int_{-T_0/2}^{T_0/2}x^2(t)\,dt
\]
Energia in un periodo:
\[
E_{sp}=\int_{-T_0/2}^{T_0/2}x^2(t)\,dt
\]

---

## 3.3 Trasformazioni temporali (FElS-2)

| Operazione | Effetto | Nota |
|---|---|---|
| \(x(t-t_0)\) | ritardo di \(t_0\) | trasla a destra |
| \(x(t+t_0)\) | anticipo di \(t_0\) | trasla a sinistra |
| \(x(-t)\) | ribaltamento | rispetto a \(t=0\) |
| \(-x(t)\) | inversione di segno | rispetto all'asse \(t\) |
| \(x(at)\), \(|a|>1\) | compressione | durata ridotta |
| \(x(at)\), \(|a|<1\) | espansione | durata aumentata |
| \(kx(t)\), \(k>1\) | amplificazione | |
| \(kx(t)\), \(k<1\) | attenuazione | |

**Invarianza dell'energia:** \(E_{x(t-t_0)}=E_{x(-t)}=E_{x(t)}\).

---

## 3.4 Simmetrie, causalità, correlazione (FElS-2)

### Simmetria pari
\[
x(t)=x(-t)\quad\forall t
\]
La trasformata di Fourier è **reale**.

### Simmetria dispari
\[
x(-t)=-x(t)\quad\forall t
\]
La trasformata di Fourier è **immaginaria pura**. Il valor medio è nullo.

### Segnali alternati
Segnali periodici in cui area positiva = area negativa (valor medio nullo). Hanno coefficienti di Fourier nulli per le armoniche pari.

### Causalità
\[
x(t)=0\quad\forall t<t_0
\]
Tipicamente \(t_0=0\): \(x(t)=x_s(t)u(t)\).

### Correlazione (cross-correlazione)
\[
R_{xy}(\tau)=\int_{-\infty}^{+\infty}x(t)y(t+\tau)\,dt
\]
Indice di somiglianza tra \(x\) e \(y\) in funzione dello shift \(\tau\).

### Autocorrelazione
\[
R_x(\tau)=\int_{-\infty}^{+\infty}x(t)x(t+\tau)\,dt
\]
Massimo in \(\tau=0\), \(R_x(0)=\overline{x^2}\).

---

## 3.5 Sistemi LTI e convoluzione (FElS-3)

### Definizione
Un sistema è **LTI** se gode di:

**Linearità (sovrapposizione degli effetti):**
\[
f(\alpha x_1+\beta x_2)=\alpha f(x_1)+\beta f(x_2)
\]

**Tempo-invarianza:**
\[
f(x(t-t_0))=y(t-t_0)
\]

### Risposta impulsiva
\[
h(t)=f(\delta(t))
\]

### Convoluzione
Per un sistema LTI:
\[
y(t)=x(t)*h(t)=\int_{-\infty}^{+\infty}x(\tau)h(t-\tau)\,d\tau
\]

**Proprietà:**
- Commutativa: \(x*y=y*x\)
- Associativa: \(x*(y*z)=(x*y)*z\)
- Distributiva: \(x*(y+z)=x*y+x*z\)
- Con impulso: \(x(t)*\delta(t-t_0)=x(t-t_0)\)
- Durata risultato = somma durate

### Convoluzioni notevoli
\[
\Pi\left(\frac{t}{T}\right)*\Pi\left(\frac{t}{T}\right)=T\Lambda\left(\frac{t}{T}\right)
\]
\[
\Pi\left(\frac{t}{T_1}\right)*\Pi\left(\frac{t}{T_2}\right)=\text{trapezio}
\]
\[
\text{gaussiana}*\text{gaussiana}=\text{gaussiana}
\]
con \(\mu=\mu_1+\mu_2\), \(\sigma^2=\sigma_1^2+\sigma_2^2\).

### Causalità di un sistema LTI
\[
h(t)=0\quad\forall t<0
\]

### Composizione di sistemi
- **Cascata:** \(H(f)=H_1(f)H_2(f)\)
- **Parallelo:** \(H(f)=H_1(f)\pm H_2(f)\)
- **Retroazione negativa:** \(H(f)=\frac{H_1(f)}{1+H_1(f)H_2(f)}\)

---

## 3.6 Serie di Fourier (FElS-4)

### Definizione
Per un segnale periodico di periodo \(T_0\):
\[
x(t)=a_0+\sum_{k=1}^{\infty}a_k\cos\left(\frac{2\pi kt}{T_0}+\vartheta_k\right)
\]
Forma complessa:
\[
x(t)=\sum_{n=-\infty}^{+\infty}X_n e^{j2\pi nf_0t},\qquad f_0=\frac{1}{T_0}
\]
\[
X_n=\frac{1}{T_0}\int_{-T_0/2}^{T_0/2}x(t)e^{-j2\pi nf_0t}\,dt
\]

\(X_0\) = valor medio = componente continua.

### Spettro
- **Spettro di ampiezza:** \(|X_n|\)
- **Spettro di fase:** \(\arg(X_n)\)
- Simmetria Hermitiana: \(X_n=X_{-n}^*\)

### Simmetrie del segnale
- \(x(t)\) pari → \(X_n\) reali (soli coseni)
- \(x(t)\) dispari → \(X_n\) immaginari (soli seni), \(X_0=0\)
- Segnale alternato → solo armoniche dispari

### Parseval
\[
P_x=\frac{1}{T_0}\int_{-T_0/2}^{T_0/2}|x(t)|^2dt=\sum_{k=-\infty}^{+\infty}|X_k|^2
\]

### Fenomeno di Gibbs
Troncando la serie si hanno oscillazioni (ripple) e sovraelongazioni (overshoot) in prossimità delle discontinuità.

---

## 3.7 Trasformata di Fourier (FElS-5)

### Definizione
\[
X(f)=\int_{-\infty}^{+\infty}x(t)e^{-j2\pi ft}\,dt
\qquad\text{(FT diretta)}
\]
\[
x(t)=\int_{-\infty}^{+\infty}X(f)e^{j2\pi ft}\,df
\qquad\text{(IFT)}
\]

### Proprietà

| Proprietà | Tempo | Frequenza |
|---|---|---|
| Linearità | \(\alpha x+\beta y\) | \(\alpha X+\beta Y\) |
| Scala | \(x(at)\) | \(\frac{1}{|a|}X(f/a)\) |
| Ritardo | \(x(t-t_0)\) | \(X(f)e^{-j2\pi ft_0}\) |
| Dualità | \(X(t)\) | \(x(-f)\) |
| Derivata | \(\frac{dx}{dt}\) | \(j2\pi f X(f)\) |
| Integrale | \(\int_{-\infty}^{t}x\) | \(\frac{X(f)}{j2\pi f}+\frac{X(0)}{2}\delta(f)\) |
| Convoluzione | \(x*y\) | \(X\cdot Y\) |
| Prodotto | \(x\cdot y\) | \(X*Y\) |
| Modulazione | \(m(t)\cos(2\pi f_0t)\) | \(\frac{1}{2}[M(f-f_0)+M(f+f_0)]\) |

### Trasformate notevoli
\[
\Pi\left(\frac{t}{T}\right)\leftrightarrow T\operatorname{sinc}(fT)
\]
\[
\Lambda\left(\frac{t}{T}\right)\leftrightarrow T\operatorname{sinc}^2(fT)
\]
\[
\delta(t)\leftrightarrow 1
\qquad
\delta(t-t_0)\leftrightarrow e^{-j2\pi ft_0}
\]
\[
1\leftrightarrow\delta(f)
\qquad
e^{j2\pi f_0t}\leftrightarrow\delta(f-f_0)
\]
\[
u(t)\leftrightarrow\frac{1}{j2\pi f}+\frac{1}{2}\delta(f)
\]
\[
\cos(2\pi f_0t)\leftrightarrow\frac{1}{2}[\delta(f-f_0)+\delta(f+f_0)]
\]
\[
\sin(2\pi f_0t)\leftrightarrow\frac{j}{2}[\delta(f+f_0)-\delta(f-f_0)]
\]
\[
e^{-\alpha t}u(t)\leftrightarrow\frac{1}{\alpha+j2\pi f},\quad\alpha>0
\]

### Parseval / Rayleigh
\[
E_x=\int_{-\infty}^{+\infty}|x(t)|^2dt=\int_{-\infty}^{+\infty}|X(f)|^2df
\]
\(|X(f)|^2\) = densità spettrale di energia.

### Banda
Larghezza di banda = intervallo di frequenze in cui lo spettro è non nullo (o contiene una percentuale significativa dell'energia, es. 90% o 99%).

### Filtri ideali (FElS-6)
- **LPF:** passa \(|f|<f_2\)
- **HPF:** passa \(|f|>f_1\)
- **BPF:** passa \(f_1<|f|<f_2\)
- **Banda a 3dB:** \(G(f)=|H(f)|^2\), \(G_{dB}=10\log_{10}G\), \(B=f_{\max}:G_{dB}\ge -3\text{ dB}\)

---

# 4. ESERCIZI SVOLTI

---

## 4.1 ESERCIZI DA "01 RACCOLTA esercizi ANALOGICA TEMPO"

---

### ESERCIZIO 1 — \(x(t)=\Pi\left(\frac{t-2}{4}\right)e^{-2t}\)

**Testo:** Dato \(x(t)=\Pi\left(\frac{t-2}{4}\right)e^{-2t}\):
- rappresentazione grafica;
- verificare se è segnale di energia o potenza e calcolare la grandezza;
- determinare espressione analitica e grafica di \(y(t)=-x(-t)\) e \(z(t)=x(t+4)\).

**Interpretazione:** Il rettangolo \(\Pi((t-2)/4)\) vale 1 per \(|t-2|\le 2\), cioè \(0\le t\le 4\). Quindi finestra l'esponenziale in \([0,4]\).

**Teoria:** FElS-2, funzioni particolari; energia/potenza; trasformazioni temporali.

**Metodo:**
1. Scrivere \(x(t)\) a tratti.
2. Grafico.
3. Calcolare \(E_x\).
4. \(P_x=0\).
5. \(y(t)\): ribaltamento + cambio segno.
6. \(z(t)\): anticipo di 4.

**Svolgimento completo:**

\[
x(t)=
\begin{cases}
e^{-2t}, & 0\le t\le 4\\
0, & \text{altrove}
\end{cases}
\]

**Energia:**
\[
E_x=\int_0^4 (e^{-2t})^2dt=\int_0^4 e^{-4t}dt
\]
\[
=\left[-\frac14 e^{-4t}\right]_0^4=-\frac14(e^{-16}-1)=\frac{1-e^{-16}}{4}
\]
\[
e^{-16}\approx 1{,}125\cdot 10^{-7}\Rightarrow E_x\approx 0{,}25\text{ J}
\]

**Potenza:** \(P_x=0\) (segnale di energia, durata finita).

**\(y(t)=-x(-t)\):**
\[
x(-t)=
\begin{cases}
e^{2t}, & -4\le t\le 0\\
0, & \text{altrove}
\end{cases}
\]
\[
y(t)=
\begin{cases}
-e^{2t}, & -4\le t\le 0\\
0, & \text{altrove}
\end{cases}
\]

**\(z(t)=x(t+4)\):**
\[
z(t)=
\begin{cases}
e^{-2(t+4)}, & -4\le t\le 0\\
0, & \text{altrove}
\end{cases}
\]

**Grafici:**
- \(x(t)\): 0 per \(t<0\); salto a 1 in \(t=0\); decade a \(e^{-8}\approx 0{,}000335\) in \(t=4\); 0 per \(t>4\).
- \(y(t)\): 0 per \(t<-4\); valore \(-e^{-8}\) in \(t=-4\); cresce in modulo fino a \(-1\) in \(t=0\); 0 per \(t>0\). Ribaltato rispetto a entrambi gli assi.
- \(z(t)\): 0 per \(t<-4\); valore 1 in \(t=-4\); decade a \(e^{-8}\) in \(t=0\); 0 per \(t>0\). Traslato a sinistra di 4.

**Perché energia e non potenza:** durata finita + energia finita ⇒ segnale di energia.  
**Perché \(P=0\):** \(E_x<\infty\) e il segnale è nullo fuori da un intervallo finito.

**Errori comuni:**
- Sbagliare il supporto del rettangolo (\(|t-2|\le 2\), non 4).
- Dimenticare il quadrato nell'energia (\(e^{-4t}\), non \(e^{-2t}\)).
- Confondere \(x(t+4)\) con un ritardo.

**Trucchi:** supporto di \(\Pi((t-a)/T)\): risolvi \(|(t-a)/T|\le 1/2\). Energia invariante per traslazione e ribaltamento.

**Mini-domande:**
1. Quanto vale \(x(1)\)? (\(e^{-2}\approx 0{,}135\))
2. Supporto di \(y(t)\)? (\([-4,0]\))
3. \(z(t)\) è anticipo o ritardo? (anticipo di 4)
4. \(E_y\) rispetto a \(E_x\)? (uguale)

---

### ESERCIZIO 2 — \(s(t)=\operatorname{sgn}(A\cos(2\pi t/T_0))\)

**Testo:** \(A=0{,}5\) V, \(T_0=4\) s. Grafico, energia/potenza, energia in un periodo, potenza media.

**Teoria:** FElS-2, funzione segno; segnali periodici → potenza.

**Svolgimento:**
\[
\cos\left(\frac{2\pi t}{4}\right)=\cos\left(\frac{\pi t}{2}\right)\ge 0
\iff -\frac{\pi}{2}+2k\pi\le\frac{\pi t}{2}\le\frac{\pi}{2}+2k\pi
\]
\[
\iff 4k-1\le t\le 4k+1
\]
Altrove \(\cos<0\) → \(s(t)=-1\).

Quindi \(s(t)\) è un'onda quadra di periodo 4 s, con \(+1\) su \([4k-1,4k+1]\) e \(-1\) altrove.

**Energia in un periodo \(T_0=4\):**
\[
E_{sp}=\int_{-2}^{2}s^2(t)dt=\int_{-2}^{2}1\,dt=4\text{ J}
\]

**Potenza media:**
\[
P_s=\frac{1}{T_0}E_{sp}=\frac{4}{4}=1\text{ W}
\]

**Segnale di potenza** (periodico, energia infinita).

**Grafico:** onda quadra ±1, periodo 4, transizioni in \(t=\pm 1,\pm 3,\pm 5,\dots\)

**Collegamenti:** segnale periodico → potenza; \(P=E_{sp}/T_0\).

**Errori comuni:** dimenticare il valore assoluto nell'energia (\(s^2=1\) sempre).  
**Trucchi:** per onda quadra ±1, \(P=1\) W indipendentemente dal periodo.

**Mini-domande:**
1. \(s(0)\)? (+1)
2. \(s(2)\)? (-1)
3. \(P_s\)? (1 W)
4. \(E_{sp}\)? (4 J)

---

### ESERCIZIO 3 — \(x(t)=2\Lambda(t/4)\)

**Testo:** Grafico, energia, potenza, \(v(t)=x(2t)\).

**Teoria:** FElS-2, triangolo; energia.

**Svolgimento:**
\(x(t)=2\Lambda(t/4)\): triangolo pari, picco 2 in \(t=0\), durata totale 4 (da \(-2\) a \(2\)).
\[
x(t)=
\begin{cases}
2\left(1-\frac{|t|}{2}\right), & |t|\le 2\\
0, & \text{altrove}
\end{cases}
\]

**Energia:**
\[
E_x=2\int_0^2\left[2\left(1-\frac{t}{2}\right)\right]^2dt
=2\int_0^2 4\left(1-\frac{t}{2}\right)^2dt
\]
\[
=8\int_0^2\left(1-t+\frac{t^2}{4}\right)dt
=8\left[t-\frac{t^2}{2}+\frac{t^3}{12}\right]_0^2
\]
\[
=8\left(2-2+\frac{8}{12}\right)=8\cdot\frac{2}{3}=\frac{16}{3}\approx 5{,}33\text{ J}
\]

**Potenza:** \(P_x=0\) (segnale di energia).

**\(v(t)=x(2t)=2\Lambda(t/2)\):** triangolo in \([-1,1]\), picco 2 in \(t=0\). Compressione temporale di fattore 2.

**Grafici:**
- \(x(t)\): 0 fuori da \([-2,2]\); rampa da 0 a 2 in \([-2,0]\); rampa da 2 a 0 in \([0,2]\).
- \(v(t)\): 0 fuori da \([-1,1]\); stesso picco 2, base dimezzata.

**Errori comuni:** dimenticare il fattore 2 esterno nel quadrato.  
**Trucchi:** per triangolo, \(E=2\int_0^{T/2}(\text{rampa})^2dt\).

**Mini-domande:**
1. \(x(0)\)? (2)
2. \(x(1)\)? (1)
3. \(E_x\)? (16/3 J)
4. \(v(t)\) ha stessa energia? (sì, compressione non cambia energia)

---

### ESERCIZIO 4 — \(x(t)=t\cdot u(t)\)

**Testo:** Studiare simmetrie.

**Teoria:** FElS-2, simmetrie pari/dispari.

**Svolgimento:**
- Pari? \(x(-t)=-t\cdot u(-t)\). Confronto con \(x(t)=t\cdot u(t)\): \(-t u(-t)\neq t u(t)\). **Falso.**
- Dispari? \(-x(-t)=t\cdot u(-t)\). Confronto: \(t u(-t)\neq t u(t)\). **Falso.**

**Conclusione:** \(x(t)\) non ha simmetria (nullo su tutto il semiasse negativo, rampa lineare sul positivo).

**Errori comuni:** confondere \(u(-t)\) con \(u(t)\).  
**Trucchi:** per verifica simmetria, sostituisci \(t\to -t\) e confronta.

**Mini-domande:**
1. \(x(-1)\)? (0, perché \(u(-1)=0\))
2. \(x(1)\)? (1)
3. È pari? (no)
4. È dispari? (no)

---

### ESERCIZIO 5 — \(x(t)=2\Pi(t/T)\Lambda(t/T)\)

**Testo:** Grafico, energia, potenza, rappresentazione alternativa come somma.

**Teoria:** FElS-2, prodotto di segnali; FElS-3 convoluzione.

**Svolgimento:**
- \(\Pi(t/T)\): rettangolo ampiezza 2, durata \(T\) (da \(-T/2\) a \(T/2\)).
- \(\Lambda(t/T)\): triangolo ampiezza 1, durata \(2T\) (da \(-T\) a \(T\)).
- Prodotto: triangolo finestrato in \([-T/2,T/2]\), guadagno 2.

\[
x(t)=
\begin{cases}
2\left(1-\frac{|t|}{T}\right), & |t|\le T/2\\
0, & \text{altrove}
\end{cases}
\]

**Energia:**
\[
E_x=2\int_0^{T/2}4\left(1-\frac{t}{T}\right)^2dt
=8\int_0^{T/2}\left(1-\frac{2t}{T}+\frac{t^2}{T^2}\right)dt
\]
\[
=8\left[t-\frac{t^2}{T}+\frac{t^3}{3T^2}\right]_0^{T/2}
=8\left(\frac{T}{2}-\frac{T}{4}+\frac{T}{24}\right)
\]
\[
=8\left(\frac{12T-6T+T}{24}\right)=8\cdot\frac{7T}{24}=\frac{7T}{3}\text{ J}
\]

**Potenza:** \(P_x=0\) (segnale di energia).

**Rappresentazione alternativa come somma:**
\[
x(t)=\Pi\left(\frac{t}{T}\right)+\Lambda\left(\frac{t}{T}\right)
\]
Attenzione: \(E_x\neq E_{x_1}+E_{x_2}\) per il termine di doppio prodotto:
\[
E_x=E_{x_1}+E_{x_2}+2\int x_1x_2\,dt
\]
\[
E_{x_1}=T,\quad E_{x_2}=\frac{T}{3},\quad 2\int x_1x_2=T
\]
\[
E_x=T+\frac{T}{3}+T=\frac{7T}{3}\ \checkmark
\]

**Grafici:**
- \(x_1(t)=\Pi(t/T)\): rettangolo ampiezza 1, durata T.
- \(x_2(t)=\Lambda(t/T)\): triangolo ampiezza 1, durata 2T.
- \(x(t)\): triangolo “troncato” in \([-T/2,T/2]\), picco 2 in 0, valore 0 in \(\pm T/2\).

**Errori comuni:** sommare le energie senza il termine di doppio prodotto.  
**Trucchi:** se \(x=x_1+x_2\), \(E=E_1+E_2+2E_{12}\).

**Mini-domande:**
1. \(x(0)\)? (2)
2. \(x(T/2)\)? (0)
3. \(E_x\)? (7T/3)
4. Perché non \(E_1+E_2\)? (doppio prodotto)

---

### ESERCIZIO 6 — \(x(t)=A\Pi\left(\frac{t-3kT_0}{T_0}\right)\)

**Testo:** Calcolare valor medio e varianza. Come cambiano con \(y=x+B\)?

**Teoria:** FElS-2, valor medio, varianza.

**Svolgimento:**
Segnale periodico di periodo \(3T_0\): impulso rettangolare di ampiezza \(A\), durata \(T_0\), ogni \(3T_0\).

**Valor medio:**
\[
m_x=\frac{1}{3T_0}\int_{-3T_0/2}^{3T_0/2}x(t)dt
=\frac{1}{3T_0}\int_{-T_0/2}^{T_0/2}A\,dt
=\frac{A T_0}{3T_0}=\frac{A}{3}
\]

**Varianza:**
\[
m_{x^2}=\frac{1}{3T_0}\int_{-T_0/2}^{T_0/2}A^2dt=\frac{A^2}{3}
\]
\[
\sigma_x^2=m_{x^2}-m_x^2=\frac{A^2}{3}-\frac{A^2}{9}=\frac{2A^2}{9}
\]

**Con \(y=x+B\):**
\[
m_y=m_x+B=\frac{A}{3}+B
\]
\[
\sigma_y^2=\sigma_x^2=\frac{2A^2}{9}
\]
La varianza non cambia: l'aggiunta di una costante non altera le variazioni.

**Collegamenti:** varianza = misura delle fluttuazioni; costante additiva non influenza.

**Errori comuni:** dimenticare il quadrato in \(m_{x^2}\).  
**Trucchi:** \(\sigma^2=\overline{x^2}-\bar{x}^2\); costante additiva non cambia \(\sigma^2\).

**Mini-domande:**
1. \(m_x\)? (A/3)
2. \(\sigma_x^2\)? (2A²/9)
3. \(m_y\)? (A/3+B)
4. \(\sigma_y^2\)? (2A²/9)

---

### ESERCIZIO 7 — Cross-correlazione \(x(t)=\Lambda(t/T)\), \(y(t)=\Pi\left(\frac{t-2T}{T}\right)\)

**Testo:** Calcolare \(R_{xy}(\tau)\) e istante di massimo.

**Teoria:** FElS-2, correlazione.

**Svolgimento:**
\[
R_{xy}(\tau)=\int_{-\infty}^{+\infty}\Lambda\left(\frac{t}{T}\right)\Pi\left(\frac{t+\tau-2T}{T}\right)dt
\]

Il triangolo è in \([-T/2,T/2]\), il rettangolo in \([2T-\tau-T/2,\ 2T-\tau+T/2]\).

**Intersezione non nulla per \(T<\tau<3T\).**

**Tratto \(T<\tau<3T/2\):**
Il rettangolo finestra la rampa decrescente del triangolo.
\[
R_{xy}(\tau-T)=\int_{T/2-\tau}^{T/2}\left(1-\frac{2t}{T}\right)dt=\frac{\tau^2}{T}
\]
Parabola con concavità verso l'alto, 0 in \(\tau=0\), \(T/4\) in \(\tau=T/2\) (shiftata di \(T\)).

**Tratto \(3T/2<\tau<2T\):**
Si aggiunge il contributo del semi-triangolo di sinistra.
\[
R_{xy}\left(\tau-\frac{3T}{2}\right)=\int_{-\tau}^{0}\left(\frac{2t}{T}+1\right)dt=-\frac{\tau^2}{T}+\tau
\]
Sommando il termine precedente:
\[
R_{xy}\left(\tau-\frac{3T}{2}\right)=-\frac{\tau^2}{T}+\tau+\frac{T}{4}
\]
Parabola con concavità verso il basso, \(T/4\) in \(\tau=0\), \(T/2\) in \(\tau=T/2\).

**Simmetria:** gli ultimi due tratti sono simmetrici ai primi due.

**Grafico di \(R_{xy}(\tau)\):**
- 0 per \(\tau<T\)
- ramo di parabola crescente per \(T<\tau<3T/2\)
- ramo di parabola con max \(T/2\) in \(\tau=2T\)
- ramo decrescente simmetrico
- 0 per \(\tau>3T\)

**Picco in \(\tau=2T\):** massima sovrapposizione tra triangolo e rettangolo → massima somiglianza.

**Soluzione alternativa (semplificata):** traslare il rettangolo in posizione simmetrica, calcolare \(R_{xy}(-\tau)\), poi ribaltare e traslare di \(2T\).

**Errori comuni:** sbagliare gli estremi di integrazione.  
**Trucchi:** risolvere graficamente per capire i tratti; sfruttare la simmetria.

**Mini-domande:**
1. \(R_{xy}(0)\)? (0)
2. \(R_{xy}(2T)\)? (T/2)
3. \(R_{xy}(3T)\)? (0)
4. Significato del picco? (max somiglianza)

---

### ESERCIZIO 7bis — Versione semplificata

**Testo:** \(x(t)=\Lambda(t/T)\), \(y(t)=\Pi((t-2T)/T)\). Calcolare \(R_{xy}(0)\), \(R_{xy}(3T/2)\), \(R_{xy}(2T)\).

**Svolgimento:**
\[
R_{xy}(0)=\int\Lambda\left(\frac{t}{T}\right)\Pi\left(\frac{t-2T}{T}\right)dt=0
\]
(non si incontrano)

\[
R_{xy}(3T/2)=\int_0^{T/2}\Lambda\left(\frac{t}{T}\right)dt=\frac{T}{4}
\]
(metà del triangolo)

\[
R_{xy}(2T)=\int_{-T/2}^{T/2}\Lambda\left(\frac{t}{T}\right)dt=\frac{T}{2}
\]
(intero triangolo)

**Interpretazione:** \(R_{xy}(0)=0\) → nessuna somiglianza; \(R_{xy}(3T/2)=T/4\) → somiglianza parziale; \(R_{xy}(2T)=T/2\) → massima somiglianza (allineamento).

**Mini-domande:**
1. \(R_{xy}(0)\)? (0)
2. \(R_{xy}(2T)\)? (T/2)
3. Cosa indica il max? (allineamento)

---

### ESERCIZIO LTI 1 — Schema ΔT, γ, derivata

**Testo:** Determinare se il sistema è LTI.

**Schema:** \(x(t)\) → ritardo \(\Delta T\) → somma con \(-\gamma x(t)\) → derivata → \(y(t)\).

**Svolgimento:**
\[
y(t)=x'(t-\Delta T)-\gamma x'(t)
\]

**Linearità:** \(x_3=\alpha x_1+\beta x_2\):
\[
y_3=\alpha x_1'(t-\Delta T)+\beta x_2'(t-\Delta T)-\gamma[\alpha x_1'(t)+\beta x_2'(t)]=\alpha y_1+\beta y_2
\]
✓ Lineare.

**Tempo-invarianza:** \(x(t-T)\):
\[
y=x'(t-T-\Delta T)-\gamma x'(t-T)=y(t-T)
\]
✓ Tempo-invariante.

**Conclusione:** LTI (combinazione di blocchi LTI).

**Errori comuni:** non verificare entrambe le proprietà.  
**Trucchi:** schema a blocchi di componenti LTI → sistema LTI.

**Mini-domande:**
1. È lineare? (sì)
2. È tempo-invariante? (sì)
3. È LTI? (sì)

---

### ESERCIZIO LTI 2 — \(y(t)=2x(t)\cos(t)\)

**Svolgimento:**
**Linearità:** \(\alpha x_1+\beta x_2\to 2(\alpha x_1+\beta x_2)\cos t=\alpha y_1+\beta y_2\) ✓

**Tempo-invarianza:** \(x(t-t_0)\to 2x(t-t_0)\cos t\neq y(t-t_0)=2x(t-t_0)\cos(t-t_0)\) ✗

**Conclusione:** lineare ma **non tempo-invariante** → non LTI.

**Errori comuni:** confondere linearità con tempo-invarianza.  
**Trucchi:** se c'è una funzione del tempo che moltiplica \(x\), non è tempo-invariante.

**Mini-domande:**
1. Lineare? (sì)
2. Tempo-invariante? (no)
3. LTI? (no)

---

### ESERCIZIO LTI 3 — \(y(t)=x(t)e^{x(t)}\)

**Svolgimento:**
**Linearità:** \(\alpha x_1+\beta x_2\to(\alpha x_1+\beta x_2)e^{\alpha x_1+\beta x_2}\neq\alpha x_1e^{x_1}+\beta x_2e^{x_2}\) ✗

**Tempo-invarianza:** \(x(t-t_0)\to x(t-t_0)e^{x(t-t_0)}=y(t-t_0)\) ✓

**Conclusione:** non lineare (esponenziale non lineare), tempo-invariante.

**Errori comuni:** pensare che l'esponenziale sia lineare.  
**Trucchi:** funzioni non lineari applicate al segnale → non linearità.

**Mini-domande:**
1. Lineare? (no)
2. Tempo-invariante? (sì)
3. LTI? (no)

---

### ESERCIZIO LTI 4 — Schema ln, ΔT1, ΔT2, exp

**Svolgimento:**
\[
y(t)=e^{\ln(x(t-\Delta T_1))+\ln(x(t-\Delta T_2))}=x(t-\Delta T_1)x(t-\Delta T_2)
\]
Prodotto di segnali → non lineare.

**Conclusione:** non LTI (non lineare).

**Errori comuni:** pensare che \(\ln\) e \(\exp\) si compensino linearmente.  
**Trucchi:** prodotto di segnali → non lineare.

**Mini-domande:**
1. Lineare? (no)
2. LTI? (no)

---

### ESERCIZIO LTI 5 — Schema ΔT1, ΔT2, ΔT3, α, derivata

**Svolgimento:**
Blocco 2 (parallelo):
\[
w(t)=v(t-\Delta T_3)-\alpha v(t-\Delta T_2)
\]
Blocco 1: \(v(t)=x(t-\Delta T_1)\).

\[
w(t)=x(t-[\Delta T_1+\Delta T_3])-\alpha x(t-[\Delta T_1+\Delta T_2])
\]
Blocco 3 (derivata):
\[
y(t)=x'(t-[\Delta T_1+\Delta T_3])-\alpha x'(t-[\Delta T_1+\Delta T_2])
\]

**Errori comuni:** non sommare i ritardi in cascata.  
**Trucchi:** sostituire progressivamente i blocchi.

**Mini-domande:**
1. \(y(t)\)? (vedi sopra)
2. È LTI? (sì)

---

### ESERCIZIO CONVOLUZIONE 1 — \(x(t)=e^{-\beta|t|}\), \(y(t)=\Pi\left(\frac{t-T/2}{T}\right)\)

**Svolgimento:**
\(y(t)\) è un rettangolo di durata \(T\), da 0 a \(T\).

\[
z(t)=x(t)*y(t)=\int_{-\infty}^{+\infty}e^{-\beta|\tau|}\Pi\left(\frac{t-\tau-T/2}{T}\right)d\tau
\]

Il rettangolo è attivo per \(t-T<\tau<t\).

**Caso 1: \(t\le 0\)** — solo ramo sinistro:
\[
z(t)=\int_{t-T}^{t}e^{\beta\tau}d\tau=\frac{1}{\beta}e^{\beta t}(1-e^{\beta T})
\]

**Caso 3: \(t>T\)** — solo ramo destro:
\[
z(t)=\int_{t-T}^{t}e^{-\beta\tau}d\tau=\frac{1}{\beta}e^{-\beta t}(e^{\beta T}-1)
\]

**Caso 2: \(0<t\le T\)** — entrambi i rami:
\[
z(t)=\int_{t-T}^{0}e^{\beta\tau}d\tau+\int_0^{t}e^{-\beta\tau}d\tau
=\frac{1}{\beta}\left(2-e^{-\beta t}-e^{\beta(t-T)}\right)
\]

**Grafico:** picco in \(t=T/2\), valore \(\frac{2}{\beta}(1-e^{-\beta T/2})\).

**Errori comuni:** non spezzare in 3 casi per la discontinuità in 0.  
**Trucchi:** spezzare sempre in 3 casi quando c'è \(e^{-\beta|t|}\).

**Mini-domande:**
1. \(z(0)\)? (\(\frac{1}{\beta}(1-e^{-\beta T})\))
2. \(z(T/2)\)? (\(\frac{2}{\beta}(1-e^{-\beta T/2})\))
3. \(z(t)\) per \(t\to\infty\)? (0)

---

### ESERCIZIO CONVOLUZIONE 2 — \(x=A\Pi\left(\frac{t-5}{2}\right)\), \(y=B\Lambda\left(\frac{t-2}{4}\right)\)

**Svolgimento:**
Isolare ritardi e guadagni:
\[
x=\Pi\left(\frac{t}{2}\right)*A\delta(t-5),\quad y=\Lambda\left(\frac{t}{4}\right)*B\delta(t-2)
\]
\[
z=\Pi\left(\frac{t}{2}\right)*\Lambda\left(\frac{t}{4}\right)*AB\delta(t-7)
\]

Convoluzione base \(\Pi(t/2)*\Lambda(t/4)\): rettangolo (durata 2) con triangolo (durata 4) → trapezio (durata 6).

**Risultato:** trapezio traslato di 7, ampiezza \(AB\), durata 6. Valore di picco \(3AB/2\).

**Grafico:** sale da 4 a 6, plateau tra 6 e 8, scende da 8 a 10.

**Errori comuni:** dimenticare i ritardi.  
**Trucchi:** separare forma base e ritardi/guadagni.

**Mini-domande:**
1. Durata risultato? (6)
2. Picco? (3AB/2)
3. Supporto? ([4,10])

---

### ESERCIZIO CONVOLUZIONE 3 — \(x=A\Pi\left(\frac{t-5}{2}\right)\), \(y=\cos(2\pi t)\)

**Svolgimento:**
\[
z(t)=\cos(2\pi t)*\Pi\left(\frac{t}{2}\right)*A\delta(t-5)
\]
\[
\cos(2\pi t)*\Pi\left(\frac{t}{2}\right)=\int_{t-1}^{t+1}\cos(2\pi\tau)d\tau
=\frac{1}{2\pi}[\sin(2\pi(t+1))-\sin(2\pi(t-1))]=0
\]
perché si integrano 2 cicli interi.

**Conclusione:** \(z(t)=0\) ovunque.

**Errori comuni:** non riconoscere l'integrale su cicli interi.  
**Trucchi:** \(\cos\) su intervallo di lunghezza multiplo del periodo → 0.

**Mini-domande:**
1. \(z(t)\)? (0)
2. Perché? (2 cicli interi)

---

### ESERCIZIO CONVOLUZIONE 4 — \(x=\frac{t}{T}\Pi\left(\frac{t-T/2}{T}\right)\), \(y=2\Pi\left(\frac{t-T}{2T}\right)\)

**Svolgimento:**
\(x\) = rampa in \([0,T]\), \(y\) = rettangolo ampiezza 2, durata \(2T\), in \([0,2T]\).

**Caso \(0\le t\le T\):**
\[
z(t)=\int_0^t\frac{\tau}{T}d\tau=\frac{t^2}{2T}
\]

**Caso \(T<t\le 2T\):**
\[
z(t)=\int_0^T\frac{\tau}{T}d\tau=\frac{T}{2}
\]

**Caso \(2T<t\le 3T\):**
\[
z(t)=\int_{t-2T}^{T}\frac{\tau}{T}d\tau=\frac{1}{2T}[T^2-(t-2T)^2]=-\frac{t^2}{2T}+2t-\frac{3T}{2}
\]

**Grafico:** ramo di parabola crescente, plateau a \(T/2\), ramo decrescente.

**Errori comuni:** sbagliare gli estremi di integrazione.  
**Trucchi:** disegnare sempre i due segnali e vedere la sovrapposizione.

**Mini-domande:**
1. \(z(T/2)\)? (T/8)
2. \(z(T)\)? (T/2)
3. \(z(3T)\)? (0)

---

### ESERCIZIO CONVOLUZIONE 5 — Risposta impulsiva schema

**Schema:** integratore → parallelo ΔT1 (+), ΔT2 (−) → amplificatore α.

\[
y(t)=\alpha\left[\int x(t-\Delta T_1)-\int x(t-\Delta T_2)\right]
\]
Con \(x=\delta(t)\):
\[
h(t)=\alpha[u(t-\Delta T_1)-u(t-\Delta T_2)]=\alpha\Pi\left(\frac{t-\frac{\Delta T_1+\Delta T_2}{2}}{\Delta T_2-\Delta T_1}\right)
\]

**Errori comuni:** non riconoscere la differenza di gradini come rettangolo.  
**Trucchi:** \(u(t-a)-u(t-b)=\Pi((t-(a+b)/2)/(b-a))\) per \(b>a\).

**Mini-domande:**
1. \(h(t)\)? (vedi sopra)
2. Supporto? (\([\Delta T_1,\Delta T_2]\))

---

### ESERCIZIO CONVOLUZIONE 6 — \(y=Ax(t-T_0)+B\frac{dx}{dt}\)

**Svolgimento:**
\[
h(t)=A\delta(t-T_0)+B\delta'(t)
\]
Schema: parallelo con ramo ritardo+guadagno A e ramo derivata+guadagno B.

**Mini-domande:**
1. \(h(t)\)? (vedi sopra)
2. Schema? (parallelo)

---

### ESERCIZIO CONVOLUZIONE 7 — \(h=\delta(t)+2\delta(t-T)\), \(x=\Lambda\left(\frac{t}{2T}\right)\)

**Svolgimento:**
\[
y=x*\delta(t)+x*2\delta(t-T)=\Lambda\left(\frac{t}{2T}\right)+2\Lambda\left(\frac{t-T}{2T}\right)
\]

**Grafico:** somma di due triangoli, uno centrato in 0, uno in \(T\) amplificato di 2. Picco in \(T\) pari a 2.

**Mini-domande:**
1. \(y(0)\)? (1)
2. \(y(T)\)? (2)
3. \(y(2T)\)? (0)

---

### ESERCIZIO CONVOLUZIONE 8 — \(h=2\delta(t-2)+u(t-2)\)

**Causale?** Sì, entrambi i termini nulli per \(t<2\) (e quindi per \(t<0\)).

**Risposta al gradino \(x=u(t)\):**
\[
y=2u(t-2)+(t-2)u(t-2)
\]

**Grafico:** 0 fino a \(t=2\), salto a 2, poi rampa lineare.

**Mini-domande:**
1. Causale? (sì)
2. \(y(2)\)? (2)
3. \(y(3)\)? (3)

---

### ESERCIZIO CONVOLUZIONE 9 — \(h=e^{-t}u(t)\), \(x=2\Pi\left(\frac{t-3}{2}\right)\)

**Svolgimento:**
\(x=2\Pi((t-3)/2)\): rettangolo ampiezza 2, durata 2, da 2 a 4.
\[
x=\Pi\left(\frac{t}{2}\right)*2\delta(t-3)
\]
Calcolo \(y_1=h*\Pi(t/2)\):
\[
y_1(t)=\int_0^{t+1}e^{-\tau}d\tau=1-e^{-(t+1)},\quad -1\le t<1
\]
\[
y_1(t)=\int_{t-1}^{t+1}e^{-\tau}d\tau=e^{-(t-1)}-e^{-(t+1)},\quad t\ge 1
\]
Poi \(y(t)=2y_1(t-3)\):
\[
y(t)=
\begin{cases}
0 & t<2\\
2[1-e^{-(t-2)}] & 2\le t<4\\
2e^{-t}(e^4-e^2) & t\ge 4
\end{cases}
\]

**Grafico:** 0 fino a 2, sale a \(2(1-e^{-2})\) in 4, poi decade esponenzialmente.

**Mini-domande:**
1. \(y(2)\)? (0)
2. \(y(4)\)? (\(2(1-e^{-2})\))
3. \(y(\infty)\)? (0)

---

## 4.2 ESERCIZI DALLA PROVETTA "FELS-1Provetta-soluzioni"

---

### PROVETTA ESERCIZIO 1 — \(x(t)=3\Lambda\left(\frac{t-2}{6}\right)\)

**Svolgimento:**
Triangolo centrato in 2, picco 3, durata 6 (da \(-1\) a 5).
\[
x(t)=
\begin{cases}
3\left(1-\frac{|t-2|}{3}\right), & -1\le t\le 5\\
0, & \text{altrove}
\end{cases}
\]

**Energia:**
\[
E_x=2\int_2^5 9\left(1-\frac{t-2}{3}\right)^2dt
=18\int_2^5\left(1-\frac{2(t-2)}{3}+\frac{(t-2)^2}{9}\right)dt
\]
Con \(u=t-2\), \(du=dt\), da 0 a 3:
\[
=18\int_0^3\left(1-\frac{2u}{3}+\frac{u^2}{9}\right)du
=18\left[u-\frac{u^2}{3}+\frac{u^3}{27}\right]_0^3
\]
\[
=18(3-3+1)=18\text{ J}
\]

**Potenza:** \(P=0\).

**Mini-domande:**
1. \(E_x\)? (18 J)
2. Picco? (3 in \(t=2\))
3. Supporto? (\([-1,5]\))

---

### PROVETTA ESERCIZIO 2 — Segnale periodico alternato

**Testo:** \(w(t)=\sin(\pi t/T)\) in \([0,T/2]\), \(\cos(\pi t/T)\) in \([T/2,T]\), periodizzato.

**Svolgimento:**
- \(w(t+T/2)=\cos(\pi(t+T/2)/T)=\cos(\pi t/T+\pi/2)=-\sin(\pi t/T)=-w(t)\)
- Segnale **alternato** → valor medio nullo → \(X_0=0\)
- Segnale alternato → solo armoniche dispari → \(X_2=0\)

**Grafico:** alternanza di semionde positive e negative, periodicità \(T\).

**Mini-domande:**
1. \(X_0\)? (0)
2. \(X_2\)? (0)
3. Perché? (segnale alternato)

---

### PROVETTA ESERCIZIO 3 — Schema T, integrale, α

**Testo:** \(x(t)=A\Pi(t/T)\). Calcolare \(h(t)\) e \(y(t)\).

**Svolgimento:**
\[
h(t)=\alpha[\delta(t-T)+u(t)]
\]

\[
y(t)=A\Pi\left(\frac{t}{T}\right)*\alpha\delta(t-T)+A\Pi\left(\frac{t}{T}\right)*\alpha u(t)
\]

**Primo termine:** \(A\alpha\Pi((t-T)/T)\) → rettangolo tra \(T/2\) e \(3T/2\).

**Secondo termine:** \(A\alpha\) rampa tra \(-T/2\) e \(T/2\), poi satura a \(A\alpha\).

**Somma:** rampa da \(-T/2\) a \(T/2\), salto a \(2A\alpha\), plateau fino a \(3T/2\), discesa a \(A\alpha\), plateau.

**Grafico:**
- 0 per \(t<-T/2\)
- rampa lineare da 0 a \(A\alpha\) in \([-T/2,T/2]\)
- salto a \(2A\alpha\) in \(T/2\)
- plateau \(2A\alpha\) in \([T/2,3T/2]\)
- discesa a \(A\alpha\) in \(3T/2\)
- plateau \(A\alpha\) per \(t>3T/2\)

**Mini-domande:**
1. \(h(t)\)? (vedi sopra)
2. \(y(T/2)\)? (\(2A\alpha\))
3. \(y(2T)\)? (\(A\alpha\))

---

### PROVETTA ESERCIZIO 4 — \(x=u(t)-u(t-T_0)\), \(H(f)=A\Pi(f/(2f_0))\), \(f_0=1/T_0\)

**Svolgimento:**
\[
x(t)=\Pi\left(\frac{t-T_0/2}{T_0}\right)
\]
\[
X(f)=T_0\operatorname{sinc}(fT_0)e^{-j\pi fT_0}
\]
\[
Y(f)=X(f)H(f)=AT_0\operatorname{sinc}(fT_0)\Pi\left(\frac{f}{2f_0}\right)e^{-j\pi fT_0}
\]

**Modulo:** \(|Y(f)|=AT_0|\operatorname{sinc}(fT_0)|\) per \(|f|<f_0\), 0 altrove.

**Grafico:** lobo principale della sinc tra \(-f_0\) e \(f_0\), picco \(AT_0\) in \(f=0\), zeri in \(f=\pm f_0\).

**Mini-domande:**
1. \(X(f)\)? (vedi sopra)
2. \(Y(f)\)? (vedi sopra)
3. Banda? (\([-f_0,f_0]\))

---

### PROVETTA ESERCIZI 5–7 — Vero/Falso

**[NON PRESENTE NEI PDF]** Il contenuto delle domande vero/falso non è leggibile nel PDF fornito. Le risposte tipiche riguardano:
- Segnali di energia vs potenza
- Proprietà della serie di Fourier
- Simmetrie
- Convoluzione

---

# 5. MAPPE CONCETTUALI

## Mappa 1 — Segnali e loro proprietà

```
SEGNALI
├── Elementari
│   ├── Π(t/T): rettangolo
│   ├── Λ(t/T): triangolo
│   ├── u(t): gradino
│   ├── δ(t): impulso
│   ├── sinc(x): sin(πx)/(πx)
│   └── sgn(t): segno
├── Classificazione
│   ├── Dominio: continuo/discreto
│   ├── Ampiezza: continua/discreta
│   ├── Deterministico/aleatorio
│   └── Periodico/aperiodico
├── Proprietà
│   ├── Energia: E=∫|x|²dt
│   ├── Potenza: P=lim(1/T)∫|x|²dt
│   ├── Valor medio
│   ├── Varianza
│   ├── Simmetria pari/dispari
│   └── Causalità
└── Trasformazioni
    ├── Ritardo/anticipo
    ├── Ribaltamento
    ├── Scala
    └── Guadagno
```

## Mappa 2 — Sistemi LTI e convoluzione

```
SISTEMI LTI
├── Proprietà
│   ├── Linearità (sovrapposizione)
│   └── Tempo-invarianza
├── Risposta impulsiva h(t)
│   └── Caratterizza completamente il sistema
├── Convoluzione
│   ├── y(t)=x(t)*h(t)
│   ├── Proprietà: commutativa, associativa, distributiva
│   └── Convoluzioni notevoli
│       ├── Impulso: x*δ=x
│       ├── Rettangoli uguali → triangolo
│       ├── Rettangoli diversi → trapezio
│       └── Gaussiane → gaussiana
└── Composizione
    ├── Cascata: H=H1·H2
    ├── Parallelo: H=H1±H2
    └── Retroazione: H=H1/(1+H1H2)
```

## Mappa 3 — Serie e Trasformata di Fourier

```
ANALISI IN FREQUENZA
├── Serie di Fourier (periodici)
│   ├── X_n = (1/T0)∫x(t)e^{-j2πnf0t}dt
│   ├── Spettro a righe
│   ├── Parseval: P=Σ|X_k|²
│   └── Simmetrie: pari→reali, dispari→immaginari
├── Trasformata di Fourier (aperiodici)
│   ├── X(f)=∫x(t)e^{-j2πft}dt
│   ├── Spettro continuo
│   ├── Proprietà
│   │   ├── Linearità
│   │   ├── Scala
│   │   ├── Ritardo
│   │   ├── Dualità
│   │   ├── Derivata: j2πf
│   │   ├── Integrale: 1/(j2πf)
│   │   ├── Convoluzione → prodotto
│   │   ├── Prodotto → convoluzione
│   │   └── Modulazione
│   ├── Trasformate notevoli
│   │   ├── Π ↔ T·sinc(fT)
│   │   ├── Λ ↔ T·sinc²(fT)
│   │   ├── δ(t) ↔ 1
│   │   ├── 1 ↔ δ(f)
│   │   └── e^{-αt}u(t) ↔ 1/(α+j2πf)
│   └── Parseval/Rayleigh: E=∫|X(f)|²df
└── Filtri
    ├── LPF, HPF, BPF
    ├── Banda a 3dB
    └── Filtri ideali non causali
```

---

# 6. FORMULARIO ESSENZIALE

## Segnali elementari
\[
\Pi(t/T)=1 \text{ per } |t|\le T/2
\]
\[
\Lambda(t/T)=1-|t|/(T/2) \text{ per } |t|\le T/2
\]
\[
u(t)=1 \text{ per } t\ge 0
\]
\[
\delta(t): \int f(t)\delta(t)dt=f(0)
\]
\[
\operatorname{sinc}(x)=\sin(\pi x)/(\pi x)
\]
\[
\operatorname{sgn}(t)=\pm 1
\]

## Energia e potenza
\[
E_x=\int|x(t)|^2dt
\]
\[
P_x=\lim_{T\to\infty}\frac{1}{T}\int_{-T/2}^{T/2}|x(t)|^2dt
\]
\[
\bar{x}=\lim_{T\to\infty}\frac{1}{T}\int x(t)dt
\]
\[
\sigma_x^2=\overline{x^2}-\bar{x}^2
\]

## Trasformazioni
\[
x(t-t_0): \text{ ritardo}
\]
\[
x(t+t_0): \text{ anticipo}
\]
\[
x(-t): \text{ ribaltamento}
\]
\[
x(at): \text{ scala}
\]

## Convoluzione
\[
y(t)=x(t)*h(t)=\int x(\tau)h(t-\tau)d\tau
\]
\[
x*\delta(t-t_0)=x(t-t_0)
\]
\[
\Pi*\Pi=T\Lambda
\]

## Serie di Fourier
\[
X_n=\frac{1}{T_0}\int_{-T_0/2}^{T_0/2}x(t)e^{-j2\pi nf_0t}dt
\]
\[
P=\sum|X_n|^2
\]

## Trasformata di Fourier
\[
X(f)=\int x(t)e^{-j2\pi ft}dt
\]
\[
x(t)=\int X(f)e^{j2\pi ft}df
\]
\[
x(t-t_0)\leftrightarrow X(f)e^{-j2\pi ft_0}
\]
\[
x(at)\leftrightarrow \frac{1}{|a|}X(f/a)
\]
\[
x*y\leftrightarrow X\cdot Y
\]
\[
x\cdot y\leftrightarrow X*Y
\]
\[
\frac{dx}{dt}\leftrightarrow j2\pi f X(f)
\]
\[
\int x\leftrightarrow \frac{X(f)}{j2\pi f}+\frac{X(0)}{2}\delta(f)
\]

## Trasformate notevoli
\[
\Pi(t/T)\leftrightarrow T\operatorname{sinc}(fT)
\]
\[
\Lambda(t/T)\leftrightarrow T\operatorname{sinc}^2(fT)
\]
\[
\delta(t)\leftrightarrow 1
\]
\[
1\leftrightarrow\delta(f)
\]
\[
e^{-\alpha t}u(t)\leftrightarrow\frac{1}{\alpha+j2\pi f}
\]
\[
\cos(2\pi f_0t)\leftrightarrow\frac{1}{2}[\delta(f-f_0)+\delta(f+f_0)]
\]

## Parseval
\[
E_x=\int|x(t)|^2dt=\int|X(f)|^2df
\]

## Filtri
\[
G(f)=|H(f)|^2
\]
\[
G_{dB}=10\log_{10}G
\]
\[
B: G_{dB}\ge -3\text{ dB}
\]

---

# 7. COME SUPERARE IL PARZIALE

## Strategie generali
1. **Leggi tutto il testo prima di iniziare.** Individua subito quali esercizi sono più semplici.
2. **Inizia dagli esercizi che sai fare.** Non perdere tempo su un esercizio bloccato.
3. **Disegna sempre.** Un grafico chiarisce supporto, simmetrie, energia/potenza.
4. **Scrivi i passaggi.** Anche se il risultato è sbagliato, i passaggi valgono punti.
5. **Controlla le unità di misura.** Energia in J, potenza in W.

## Tempi
- 8 esercizi in 2 ore → 15 minuti per esercizio.
- Se un esercizio richiede più di 20 minuti, salta e torna dopo.

## Priorità di ripasso (ultimi giorni)
1. Energia/potenza e segnali elementari
2. Convoluzione (grafica e analitica)
3. Serie e trasformata di Fourier
4. Sistemi LTI
5. Correlazione

## Cosa ripassare per ultimo
- Formulario (trasformate notevoli, proprietà)
- Errori comuni (supporto del rettangolo, segno, quadrati)
- Grafici tipici (rettangolo, triangolo, sinc, onda quadra)

## Gestione della prova
- **Domande a risposta multipla:** leggere bene, attenzione ai distrattori. Punteggio negativo → non tirare a indovinare.
- **Domande aperte:** scrivere tutti i passaggi, anche quelli “ovvi”.
- **Grafici:** assi etichettati, punti notevoli, supporto.

---

# 8. SIMULAZIONE D'ESAME

## Prova simulata (8 domande)

**1.** Dato \(x(t)=2\Pi\left(\frac{t-1}{2}\right)e^{-t}\):
- a) Rappresentare graficamente.
- b) Calcolare energia e potenza.
- c) Determinare \(y(t)=x(-t)\) e \(z(t)=x(t-3)\).

**2.** Dato \(s(t)=\operatorname{sgn}(\cos(2\pi t/4))\):
- a) Disegnare il segnale.
- b) Calcolare potenza media ed energia in un periodo.

**3.** Dato \(x(t)=3\Lambda\left(\frac{t-1}{4}\right)\):
- a) Disegnare.
- b) Calcolare energia.
- c) Disegnare \(v(t)=x(2t)\).

**4.** Determinare se il sistema \(y(t)=x(t)\sin(t)\) è LTI. Giustificare.

**5.** Calcolare la convoluzione tra \(x(t)=\Pi(t/2)\) e \(y(t)=\Pi(t/4)\).

**6.** Dato \(x(t)=A\Pi\left(\frac{t-2kT_0}{T_0}\right)\), calcolare valor medio e varianza.

**7.** Calcolare la trasformata di Fourier di \(x(t)=e^{-3t}u(t)\).

**8.** Dato \(H(f)=A\Pi(f/(2f_0))\) e \(x(t)=\Pi(t/T_0)\) con \(f_0=1/T_0\):
- a) Calcolare \(Y(f)\).
- b) Disegnare \(|Y(f)|\).

---

## Soluzioni della simulazione

**1.**
- a) Rettangolo in \([0,2]\), esponenziale \(e^{-t}\) decrescente da 1 a \(e^{-2}\).
- b) \(E=\int_0^2 e^{-2t}dt=\frac{1-e^{-4}}{2}\approx 0{,}49\) J; \(P=0\).
- c) \(y(t)=-x(-t)\): rettangolo in \([-2,0]\), esponenziale \(e^{t}\). \(z(t)=x(t-3)\): rettangolo in \([3,5]\).

**2.**
- a) Onda quadra ±1, periodo 4, \(+1\) su \([4k-1,4k+1]\).
- b) \(P=1\) W, \(E_{sp}=4\) J.

**3.**
- a) Triangolo centrato in 1, picco 3, durata 4 (da \(-1\) a 3).
- b) \(E=2\int_0^2 9(1-t/2)^2dt=18\cdot\frac{2}{3}=12\) J.
- c) \(v(t)=3\Lambda(t/2)\): triangolo in \([-1,1]\), picco 3.

**4.** \(y(t)=x(t)\sin(t)\): lineare ma non tempo-invariante → **non LTI**.

**5.** \(\Pi(t/2)*\Pi(t/4)\): rettangoli di durata 2 e 4 → trapezio. Durata 6. Picco 2.

**6.** \(m_x=A/3\), \(\sigma_x^2=2A^2/9\).

**7.** \(X(f)=\frac{1}{3+j2\pi f}\).

**8.**
- a) \(Y(f)=AT_0\operatorname{sinc}(fT_0)\Pi(f/(2f_0))e^{-j\pi fT_0}\).
- b) Lobo principale della sinc tra \(-f_0\) e \(f_0\), picco \(AT_0\).

---

