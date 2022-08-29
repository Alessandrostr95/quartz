---
---

# Processo Empirico

Siano il [campionamento casuale](Random%20Sample.md#random-sample) $X_1, ..., X_n$.
Il **processo empirico** (o **funzione di ripartizione empirica**) è una funzione che stima la funzione di ripartizione $F(x)$, definita come $$\hat{F}*n(x) = \frac{1}{n} \sum*{i=1}^{n} 1({X_i \leq x})$$

Osserviamo che la v.a. $\sum\_{i=1}^{n}1({X_i \leq x})$ segue una **distribuzione binomiale** con probabilità di successo $p = P(X_i \leq x) = F(x)$, perciò avremo che $\hat{F}\_n(x) \sim \text{Bin}(n, F(x))$.

Essendo quindi tale funzione **probabilistica**, ha senso calcolarne la media e la varianza.
$$\mathbb{E}\left\[ \hat{F}\_n(x) \right\] = \frac{1}{n} \mathbb{E}\left\[ \text{Bin}(n, F(x)) \right\] = \frac{1}{\cancel{n}}\cancel{n}F(x) = F(x)$$
$$\text{Var}(\hat{F}(x)) = \frac{1}{n^2} \text{Var}(\text{Bin}(n, F(x))) = \frac{F(x)(1 - F(x))}{n} \xrightarrow{n \to \infty} 0$$

Osservare che tale funzione $\hat{F}\_n(x)$ è **costante a tratti** con salti i ognuno dei valori $X_i$ (ordinati) di ampiezza $1/n$.

Questa applicazione (come molte) altre motiva l'introduzione delle **[statistiche d'ordine](Processo%20empirico%20e%20Statistiche%20d'ordine.md#statistiche-d-ordine)**.

---

# Statistiche d'ordine

Data una sequenza $X_1, ..., X_n$, definiamo una **statistica d'ordine** come un'*applicazione* $(X_1, ..., X_n) \mapsto X\_{(1)}, ..., X\_{(n)}$ tale che il vettore risultante è **ordinato in maniera non decrescente**, ovvero $$X\_{(1)} \leq X\_{(2)} \leq ... \leq X\_{(n)}$$
Spesso si è interessati alla **distribuzione** di queste statistiche d'ordine, sia per i songli elementi sia per l'intero vettore.
Vediamo alcuni esempi.

## Distribuzione del massimo

Cerchiamo di capire che distribuzione segue $X\_{(n)}$.
Partendo dalla funzione di ripartizione, avremo che $X\_{(n)} \leq t$ **se e solo se** tutti gli altri elementi sono $\leq t$ (questo per $X\_{(n)}$ è appunto il massimo).

Pertanto la sua ripartizione sarà $$F\_{X\_{(n)}}(t) = P(X\_{(n)} \leq t) = P(X\_{(i)} \leq t ; \forall i = 1 ... n) = \left\[F(t)\right\]^n$$
La sua *densità* invece sarà $$f\_{X\_{(n)}}(x) = n\left\[ F(x) \right\]^{n-1} \cdot f(x)$$

## Distribuzione del minimo

Discorso del tutto analogo per il minimo.
Perciò $X\_{(1)} \geq t$ **se e solo se** tutti gli altri $X\_{(i)}$ saranno $\geq t$.
$$P(X\_{(1)} \geq t) = P(X\_{(i)} \geq t ; i=1, ..., n\forall) = \left\[ 1 - F(t) \right\]^n$$
$$\implies F\_{X\_{(1)}}(t) = 1 - \left\[ 1 - F(t) \right\]^n$$

$$f\_{X\_{(1)}}(t) = n\left\[ 1-F(x)\right\]^{n-1} \cdot f(x)$$

## Distribuzioni intermedie

Chiediamoci ora qual è la distribuzione di $X\_{(k)}$.
Osserviamo che $X\_{(k)} \leq t$ **se e solo se** <u>almeno</u> $k$ v.a. sono $\leq t$.

Sia la v.a. $T$ che conta il numero di *"successi"*, ovvero il numero di $1({X\_{(i)} \leq t})$.
Osserviamo che $T \sim \text{Bin}(n, F(t))$
Perciò $$P(X\_{(k)} \leq t) = P(T \geq k) = \sum\_{i=k}^{n}P(T=i) = \sum\_{i=1}^{n} \binom{n}{i}F(t)^i(1-F(t))^{n-i}$$

### Esempio: massimo di uniformi

Siano $X_1, ..., X_n \sim U\left\[ 0,1 \right\]$ **i.i.d.**.
Si vuole calcolare la media di $X = \max_i X_i$.

Come visto in precedenza avremo $$F_X(t) = \left\[ F(t) \right\]^n = t^n$$
$$f_X(x) = nx^{n-1}$$

Perciò la sua media sarà $$\mathbb{E}\left\[ X \right\] = \int_0^1 xf_X(x) , dx = \int_0^1 nx^n , dx = \frac{nx^{n+1}}{n+1} \Bigg\vert_0^1 = \frac{n}{n+1}$$
Tale risultato è ragionevole.
Infatti per $n \to \infty$ avremo che il massimo tende ad 1, però il suo valore è sempre $\< 1$ perché la probabilità che sia esattamente 1 è nulla.
