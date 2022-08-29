---
---

## Esercizio 10.1

Sia un [campione](../Random%20Sample.md#random-sample) $X_1, ..., X_n$ di una popolazione con *pdf* $$f(x \vert \theta) = \frac{1}{2}(1+\theta x)$$ per $x, \theta \in (-1, 1)$.

Trovare uno **[stimatore consistente](../Stimatori%20Puntuali.md#consistenza-di-uno-stimatore)** per il parametro $\theta$.

### Soluzione

Iniziamo col calcolare la media della distribuzione $$\mu = \mathbb{E}*{\theta}\left\[ X \right\] = \frac{1}{2}\int*{-1}^{1}x + \theta x^2 , dx = \frac{\theta}{3}$$ e la varianza $$\sigma^2 = \text{Var}*{\theta}(X) = \mathbb{E}*{\theta}\left\[ X^2 \right\] - \mu^2 = \frac{1}{2}\int\_{-1}^{1} x^2 + \theta x^3 , dx - \frac{\theta^2}{9} = \frac{3-\theta^2}{9}$$

Consideriamo ora la **[media campionaria](../Random%20Sample.md#media-campionaria)** $\overline{X} = \sum_i X_i/n$.
Ricordiamo dal [Random Sample > Teorema 5 2 6 - Proprietà importanti](../Random%20Sample.md#teorema-5-2-6-proprieta-importanti) che

1. $$\mathbb{E}\left\[ \overline{X} \right\] = \mu = \frac{\theta}{3}$$
1. $$\text{Var}(\overline{X}) = \frac{\sigma^2}{n} = \frac{3-\theta^2}{9n}$$

Perciò ponendo lo stimatore $\hat\theta = 3 \overline{X}$ avremo che $$\mathbb{E}\left\[ \hat\theta \right\] = \mathbb{E}\left\[ 3\overline{X} \right\] = \theta$$ e $$\text{Var}(\hat\theta) = \text{Var}(3\overline{X}) = 9 \cdot \text{Var}(\overline{X}) = \frac{3-\theta^2}{n}$$ 
Ovvero $\hat\theta$ è uno stimatore **non distorto** e **asintoticamente efficiente** per $\theta$.

Per la **[legge dei grandi numeri](../Convergenza.md#teorema-debole-dei-grandi-numeri-weak-lln)** abbiamo che $$1 = \lim\_{n \to \infty} P(\vert \overline{X} - \mu \vert \< \varepsilon) = \lim\_{n \to \infty} P(\vert 3\overline{X} - 3\mu \vert \< 3\varepsilon) = \lim\_{n \to \infty} P(\vert \hat\theta - \theta \vert \< \varepsilon')$$ per ogni $\varepsilon > 0$.
Pericò $\hat\theta$ è anche uno **stimatore consistente**, ovvero $\hat\theta \xrightarrow{p} \theta$.

Consideriamo ora uno **[MLE](../Stimatore%20di%20Massima%20Verosimiglianza.md#stimatore-di-massima-verosimiglianza-mle)** $\hat\theta\_{ML}$ per $\theta$.
Ricordiamo che $$\hat\theta\_{ML} = \arg \max\_{\theta \in (-1,1)} \ln{L(\theta \vert \mathbf{x})}$$ con $$\ln{L(\theta \vert \mathbf{x})} = -n\ln2 + \sum\_{i=1}^{n}\ln{(1 + \theta x_i)}$$

Ricordiamo inoltre che $\hat\theta\_{ML}$ è uno dei punti in cui la [score funcion](../Stimatore%20di%20Massima%20Verosimiglianza.md#03be6d) si annulla $$S(\hat\theta \vert \mathbf{x}) = \sum\_{i=1}^{n} \frac{d}{d\theta}\ln{(1 + \theta x_i)} = \sum\_{i=1}^{n} \frac{x_i}{1 + \theta x_i} = 0$$
Calcolare il reale punto di massima può risultare complesso, possiamo però calcolare la **varianza asintotica** grazie alle [proprietà asintotiche di un MLE](../Stimatore%20di%20Massima%20Verosimiglianza.md#proprieta-asintotiche-molto-importanti) $$\lim\_{n \to \infty} \text{Var}(\hat\theta\_{ML}) = \frac{1}{I(\theta)}$$ con $$\begin{align\*}
I(\theta)
&= \mathbb{E}*{\theta}\left\[ \left( \frac{d}{d \theta} \ln{f(X \vert \theta)} \right)^2 \right\]\\
&= \mathbb{E}*{\theta}\left\[ \left( \frac{X}{1 + \theta X}\right)^2 \right\]\\
&= \int\_{-1}^{1}\frac{x^2}{(1+ \theta x)^2} \cdot \frac{1}{2}(1+ \theta x) , dx\\
&= \frac{1}{2}\int\_{-1}^{1}\frac{x^2}{1+ \theta x} , dx\\
&= \frac{1}{2\theta^3}\log{\frac{1+\theta}{1-\theta}} - \frac{1}{\theta^2}
\\end{align\*}$$
