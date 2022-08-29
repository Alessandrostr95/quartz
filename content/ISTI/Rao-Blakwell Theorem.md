---
---

# Rao-Blakwell Theorem

Sia un [campionamento](Random%20Sample.md#random-sample) $\mathbf{X} = (X_1, ..., X_n)$ dipendente da un parametro $\theta$, sia $T(\mathbf{X})$ una **[statistica sufficiente](Statistiche%20Sufficienti.md#statistica-sufficiente)** per $\theta$, e sia $W(\mathbf{X})$ uno **[stimatore non distorto](Stimatori%20Puntuali.md#401481)** per $\tau(\theta)$.

Definiamo la funzione $$\phi(t) = \mathbb{E}\left\[ W(\mathbf{X}) \vert ;t; \right\]$$

Allora avremo che

1. $$\mathbb{E}\_{\theta}\left\[ \phi(T(\mathbf{X})) \right\] = \tau(\theta)$$ ^75479a
1. $$\text{Var}*\\theta\big(\phi(T(\mathbf{X}))\big) \leq \text{Var}*\\theta(W(\mathbf{X}))$$ ^57e6d5

Ovvero $\phi(T(\mathbf{X}))$ è il **miglior** stimatore non distorto di $\tau(\theta)$.

## Proof

Prima di iniziare è utile ricordare che per ogni coppia di v.a. $X,Y$ si ha che

* $\mathbb{E}\left\[ \mathbb{E}\left\[ X \vert Y \right\]\\right\] = \mathbb{E}\left\[ X \right\]$
* $\text{Var}(X) = \text{Var}(\mathbb{E}\left\[ X \vert Y \right\]) + \mathbb{E}\left\[\\text{Var}( X \vert Y) \right\]$

Il [punto 1](Rao-Blakwell%20Theorem.md#75479a) è banalmente verificabile $$\mathbb{E}*{\theta}\left\[ \phi(T(\mathbf{X})) \right\] = \mathbb{E}*{\theta}\left\[ \mathbb{E}\left\[ W(\mathbf{X}) \vert T(\mathbf{X}) \right\] \right\] = \mathbb{E}\_\\theta\left\[ W(\mathbf{X}) \right\] = \tau(\theta)$$ perciò $\phi(T(\mathbf{X}))$ è **non distorto** per $\tau(\theta)$.

Invece per il [punto 2](Rao-Blakwell%20Theorem.md#57e6d5) abbiamo che
$$\begin{align\*}
\\text{Var}*\\theta(W(\mathbf{X}))
&= \text{Var}*\\theta(\mathbb{E}\left\[ W(\mathbf{X}) \vert T(\mathbf{X}) \right\]) + \mathbb{E}*\\theta\left\[ \text{Var}(W(\mathbf{X}) \vert T(\mathbf{X})) \right\]\\
&= \text{Var}*\\theta\big(\phi(T(\mathbf{X}))\big) + \mathbb{E}*\\theta\left\[ \text{Var}(W(\mathbf{X}) \vert T(\mathbf{X})) \right\]\\
&\geq \text{Var}*\\theta\big(\phi(T(\mathbf{X}))\big)
\\end{align\*}$$
Perciò abbiamo che $\phi(T(\mathbf{X}))$ è **uniformemente** migliore di $W(\mathbf{X})$.

Ora manca solo dimostrare che $\phi(T(\mathbf{X}))$ è uno stimatore.
Basta osservare che $\phi(t) = \mathbb{E}\left\[ W(\mathbf{X}) \vert ;t; \right\]$ è una funzione dei soli parametri $X_1, ..., X_n$, perciò è *indipendente* da $\theta$, perciò è uno stimatore $\square$.

---

# Conclusioni

Il teorema di Rao-Blakwell in sintesi ci dice che è inutile cercare stimatori che non siano funzioni della [statistica sufficiente minimale](Statistiche%20Sufficienti.md#def-statistica-sufficiente-minimale).
