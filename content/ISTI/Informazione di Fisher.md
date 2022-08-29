---
---

# Informazione di Fisher

Sia $\mathbf{X}$ un [campione aleatorio](Random%20Sample.md#random-sample) dipendente da un parametro (sconosciuto) $\theta$.
L'**informazione di Fisher** è una funzione definita in due modi

1. $$I(\theta) = \mathbb{E}*\\theta \left\[ \left(\frac{\partial}{\partial \theta}\ln{f(\mathbf{X} \vert \theta)} \right)^2 \right\] = \mathbb{E}*\\theta \left\[ \left(\frac{\partial}{\partial \theta}\ln{L(\theta \vert \mathbf{X})} \right)^2 \right\]$$
1. $$I(\theta) = -\mathbb{E}*\\theta \left\[ \frac{\partial^2}{\partial \theta^2}\ln{f(\mathbf{X} \vert \theta)} \right\] = -\mathbb{E}*\\theta \left\[ \frac{\partial^2}{\partial \theta^2}\ln{L(\theta \vert \mathbf{X})} \right\]$$

## Esempio - Campione esponenziale

Sia $\mathbf{X}$ un [campione](Random%20Sample.md#random-sample) [esponenziale](Distribuzioni.md#esponenziale) di parametro $\lambda$.
La [verosimiglianza](Verosimiglianza.md#likelihood-function) risulta quindi essere $$L(\lambda \vert \mathbf{x}) = f\_{\mathbf{X}}(\mathbf{x} \vert \theta) = \prod\_{i=1}^{n}\lambda e^{-\lambda x_i} = \lambda^n e^{-\lambda\sum_i x_i}$$
Il suo logaritmo risulta invece $$\ln{L(\lambda \vert \mathbf{x})} = -\lambda\sum\_{i=1}^{n}x_i + n\ln{\lambda}$$ con derivate
$$\begin{align\*}
\\frac{d}{d\lambda} \ln{L(\lambda \vert \mathbf{x})} &= \frac{n}{\lambda} - \sum\_{i=1}^{n}x_i\\
\\frac{d^2}{d\lambda^2} \ln{L(\lambda \vert \mathbf{x})} &= -\frac{n}{\lambda^2}\\
\\end{align\*}$$

Perciò (dato che la derivata seconda non dipende più dal campione $\mathbf{X}$) l'informazione di Fisher sarà $$I(\lambda) = \frac{n}{\lambda^2}$$

# Proprietà

## Adattività

L'informazione di Fisher è **adattiva** rispetto a due campioni $\mathbf{X}, \mathbf{Y}$ **indipendenti**.
$$I\_{\mathbf{X}, \mathbf{Y}}(\theta) = I\_{\mathbf{X}}(\theta) + I\_{\mathbf{Y}}(\theta)$$

Ne segue quindi che l'informazione di un campione $X_1, ..., X_n$ di v.a. **i.i.d.** è pari a $n$ volte l'informazione di Fisher di un generico $X_i$.
$$I\_{X_1, ..., X_n}(\theta) = n \cdot I\_{X_1}(\theta)$$

## Implicazioni sulla Sufficienza di una statistica

Richiamando il [Teorema di Fattorizzazione](Statistiche%20Sufficienti.md#teorema-di-fattorizzazione) avremo che data una **statistica sufficiente** $T$ per un parametro $\theta$
$$\begin{align\*}
\\frac{\partial}{\partial \theta}\ln{L(\theta \vert \mathbf{X})}
&= \frac{\partial}{\partial \theta}\ln{f(\mathbf{X} \vert \theta)}\\
&= \frac{\partial}{\partial \theta}\ln{(g(T(\mathbf{X}) \vert \theta) \cdot h(\mathbf{X}))}\\
&= \frac{\partial}{\partial \theta}\ln{g(T(\mathbf{X}) \vert \theta)}\\
&= \frac{\partial}{\partial \theta}\ln{L(\theta \vert T(\mathbf{X}))}
\\end{align\*}$$

Perciò per statistiche sufficienti $T$ si ha che $$I\_{\mathbf{X}}(\theta) = I\_{T(\mathbf{X})}(\theta)$$

Invece per statistiche $T$ *in generale* vale che $$I\_{\mathbf{X}}(\theta) \geq I\_{T(\mathbf{X})}(\theta)$$

## Implicazioni sulla Efficienza di una statistica

La [disuguaglianza di Cramér-Rao](Cramer-Rao%20Inequality.md) stabilisce una correlazione tra **informazione di Fisher** e **varianza di uno stimatore non distorto**.
Più precisamente ricordiamo che dato uno stimatore non distorto $\hat{\theta}$ del parametro $\theta$ vale che $$\text{Var}(\hat{\theta}) \geq \frac{1}{I(\theta)}$$

---

## Esempio - Bernoulliane

Sia il [campione](Random%20Sample.md#random-sample) $X_1, ..., X_n$ di $\text{Bernoulli}(\theta)$, con [probabilità congiunta](Distribuzioni%20Multivariate.md#joint-pmf)
$$f\_{\mathbf{X}}(\mathbf{x} \vert \theta) = \prod\_{i=1}^{n}\theta^{x_i}(1-\theta)^{1 - x_i} = \theta^s(1-\theta)^{n-s}$$ dove $s = \sum_i x_i$.

Per [adattività](Informazione%20di%20Fisher.md#adattivita) avremo che
$$\begin{align\*}
I\_{\mathbf{X}}(\theta)
&= n \cdot I\_{X_1}(\theta)\\
&= -n \cdot \mathbb{E}*{\theta}\left\[ \frac{\partial^2}{\partial \theta^2}\ln{L(\theta \vert X_1)} \right\]\\
&= -n \cdot \mathbb{E}*{\theta}\left\[ \frac{\partial^2}{\partial \theta^2}\ln{\left( \theta^{X_1}(1-\theta)^{1-X_1} \right)} \right\]\\
&= -n \cdot \mathbb{E}\_{\theta}\left\[ -\frac{X_1}{\theta^2} - \frac{(1-X_1)}{(1 - \theta)^2} \right\]\\
&= -n\cdot \left( - \frac{1}{\theta} - \frac{1}{1-\theta} \right)\\
&= n \cdot \frac{1}{\theta(1-\theta)}
\\end{align\*}$$
