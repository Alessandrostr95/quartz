---
---

# CLT - Central Limit Theorem

Sia la sequenza di v.a. $X_1, X_2, ...$ **indipendenti e identicamente distribuite**, e per le quali la relativa [mgf](Distribuzioni%20Multivariate.md#moment-generating-function)  è definita quantomeno in un *intorno* di $0$ (ovvero $M\_{X_i}(t)$ è definita per $\vert t \vert \< h$, per qualche $h > 0$ fissato).

Dato che $M\_{X_i}(t)$ è definita in $0$ allora esistono le medie $\mathbb{E}\left\[ X_i \right\] = \mu$ e $\text{Var}(X_i) = \sigma^2$, entrambe **finite**.

Sia $\overline{X}\_n$ la **[media campionaria](Random%20Sample.md#media-campionaria)** delle prime $n$ variabili della nostra serie, e indichiamo con $G_n(t)$ la **funzione di ripartizione** della v.a. $\sqrt{n}(\overline{X}*n - \mu)/\sigma$, ovvero $$G_n(t) = P\left( \sqrt{n} \frac{\overline{X}*n - \mu}{\sigma} \leq t \right) = P\left( \frac{X_1 + ... + X_n - n\mu }{\sqrt{n\sigma}} \leq t \right)$$
Allora per ogni $x$ **finito** (ovvero $-\infty \< x \< \infty$) avremo che $$\lim*{n \to \infty}G_n(x) = \frac{1}{\sqrt{2\pi}}\int*{-\infty}^{x}e^{-y^2/2},dy = \Phi(x)$$ ovvero per $n \to \infty$ avremo che $\sqrt{n}(\overline{X}\_n - \mu)/\sigma$ tenderà ad avere una **[distribuzione normale stadardizzata](Distribuzioni.md#normale-standard)** $N(0,1)$.

Osserviamo che in realtà possiamo dire che $\sqrt{n}(\overline{X}\_n - \mu) \xrightarrow{d} N(0,1)$ (vedi [Convergenza > Convergenza in Distribuzione](Convergenza.md#convergenza-in-distribuzione)).

## Versione alternativa

$$\sqrt{n}(\overline{X}\_n - \mu) \xrightarrow{d} N(0, \sigma^2)$$
oppure
$$\frac{X_1 + ... + X_n - n\mu}{\sqrt{n}} \xrightarrow{d} N(0, \sigma^2)$$

---

# Normali Multivariate

Sia il vettore *colonna* $\mathbf{X} = (X_1, ..., X_n)^T$ composto da $n$ **normali indipendenti**.

La sua media risulterà essere il vettore *colonna* $$\mathbb{E}\left\[ \mathbf{X} \right\] = (\mathbb{E}\left\[ X_1 \right\], ..., \mathbb{E}\left\[ X_n \right\])^T$$
Tale vettore avrà anche una **matrice di convarianza** $$\Sigma := \text{Cov}(\mathbb{E}\left\[ \mathbf{X} \right\]) = \mathbb{E}\left\[ (\mathbf{X} - \mathbb{E}\left\[ \mathbf{X} \right\])(\mathbf{X} - \mathbb{E}\left\[ \mathbf{X} \right\])^T \right\]$$ di dimensione $n \times n$.

In posizione $i,j$ della matrice di covarianza troveremo $\text{Cov}(X_i, X_j)$.

Osserivamo che $\Sigma$ è **simmetrica** $$\Sigma = \Sigma^T$$ e che lungo la diagonale troviamo la **varianza** della variabile $i$-esima, perché $$\text{Cov}(X_i, X_i) = \text{Var}(X_i)$$
Anche nel caso multivariato il valore atteso preserva la **linearita** con costanti matriciali e vettoriali.
$$\mathbb{E}\left\[ \mathbf{X} + \mathbf{Y} \right\] = \mathbb{E}\left\[ \mathbf{X} \right\] + \mathbb{E}\left\[ \mathbf{Y} \right\]$$
$$\mathbb{E}\left\[ A \cdot\mathbf{X} \right\] = A \cdot \mathbb{E}\left\[ \mathbf{X} \right\]$$

Nel caso della covarianza invece $$\text{Cov}(A \cdot \mathbf{X}) = A \cdot \Sigma \cdot A^T$$

Sia il vettore $\mathbf{Z} = (Z_1, ..., Z_n)$ composto da sole $N(0,1)$.
Siano un $\mu \in \mathbb{R}^n$  e $A \in \mathbb{R}^{n \times n}$.

Allora il vettore $\mathbf{X} = \mu + A \mathbf{Z}$ avrà **distribuzione multivariata normale** con media $\mu$ e matrice di covarianza $\Sigma = AA^T$.

### Densità normale multivariata

Sia il vettore $\mathbf{Z} = (Z_1, ..., Z_n)$ composto da sole $N(0,1)$.
Siano un $\mu \in \mathbb{R}^n$  e $A \in \mathbb{R}^{n \times n}$.
Il vettore $\mathbf{X} = \mu + A \mathbf{Z}$ con media $\mu$ e matrice di covarianza $\Sigma = AA^T$ avrà densità $$\frac{1}{(2\pi)^{n} \cdot \vert \det{(\Sigma)}\vert}\exp\left(-\frac{1}{2}(\mathbf{X} - \mu)\Sigma(\mathbf{X} - \mu)^T \right)$$

---

# CLT Multivariato

Siano i vettori aleatori $\mathbf{X}\_1, \mathbf{X}\_2, ...$  *i.i.d.* con media $\mu$ e matrice di covarianza $\Sigma$.
Allora avremo che $$\frac{\mathbf{X}\_1 + ... + \mathbf{X}\_n - n\mu}{\sqrt{n}} \xrightarrow{d} N(\mathbf{0}, \Sigma)$$
(vedi [CLT - Central Limit Theorem > Versione alternativa](CLT%20-%20Central%20Limit%20Theorem.md#versione-alternativa)).
