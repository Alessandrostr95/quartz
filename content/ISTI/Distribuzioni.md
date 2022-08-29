---
---

# Continue

# Normale

### Notazione

$$N(\mu, \sigma^2)$$

### Parametri

* **media** $\mu$
* **varianza** $\sigma^2$

### CDF

$$X \sim N(\mu, \sigma^2) \implies F_X(x) = \frac{1}{\sqrt{2\pi}} \int\_{-\infty}^{x}e^{-\dfrac{1}{2}\left( \dfrac{t-\mu}{\sigma} \right)^2} ,dt$$

### PDF

$$X \sim N(\mu, \sigma^2) \implies f_X(x) = \frac{1}{\sigma\sqrt{2\pi}}e^{- \dfrac{1}{2}\left( \dfrac{x-\mu}{\sigma}\right)^2}$$

### MGF

$$X \sim N(\mu, \sigma^2) \implies M_X(t) = \exp{\left( \mu t + \sigma^2 \frac{t^2}{2} \right)}$$

## Normale Standard

Una **normale standard** è un normale con parametri $\mu = 0$ e $\sigma^2 = 1$, ovvero $N(0,1)$.
Avremo quindi

* Supporto $\mathbb{R}$
* Media $\mu = 0$
* Varianza $\sigma^2 = 1$
* cdf $$\Phi(x) = \frac{1}{\sqrt{2\pi}} \int\_{-\infty}^{x}e^{-t^2/2} ,dt$$
* pdf $$\phi(x) = \frac{1}{\sqrt{2\pi}}e^{-x^2/2}$$
* mgf $M_X(t) = e^{t^2/2}$

Osserviamo che $X \sim N(\mu, \sigma^2)$ avra *pdf* $$f_X(x) = \frac{1}{\sigma} \cdot \phi\left( \frac{x - \mu}{\sigma} \right)$$ e *cdf* $$f_X(x) = \Phi\left( \frac{x - \mu}{\sigma} \right)$$

## Proprietà importanti

Sia $X \sim N(\mu, \sigma^2)$

1. La v.a. $aX + b$ equivlae a una normale $N(a\mu + b, |a|\sigma)$.
1. Caso particolare del predente: sia $Z \sim N(0, 1)$. Allora la v.a. $\sigma^2 Z + \mu$ è una normale $N(\mu, \sigma^2)$. 
1. $e^X \sim \ln{(N(\mu, \sigma^2))}$.
1. La v.a. $\vert X - \mu \vert / \sigma$ avrà distribuzione **chi** con 1 grado di libertà: $\vert X - \mu \vert / \sigma \sim \chi_1$.
1. La v.a. $(X/\sigma)^2$ ha distribuzione **chi quadro non centrata** con $1$ grado di libertà: $$\left( \frac{X}{\sigma}\right)^2 \sim \chi_1^2\left( \frac{\mu^2}{\sigma^2} \right)$$
   Nel caso in cui $\mu = 0$ avremo semplicemente una **chi quadro** $\chi_1^2$
1. La [media campionaria](Random%20Sample.md#media-campionaria) $\overline{X}\_n$ di $n$ normali **indipendenti** ha una distribuzione $N(\mu, \sigma^2/n)$. ^50a917
1. La sommma di $n$ normali **indipendenti** ha distribuzione $N(n\mu, n\sigma^2)$.

### Bin(n,p) $\to$ N(np, np(1-p))

Sia $X \sim \text{Bin}(n,p)$ con media $\mu = np$ e varianza $\sigma^2 = np(1-p)$.
Possiamo approssimare $X$ con una normale $Y \sim N(np, np(1-p))$.

![\|400](isti-distr-1.png)

---

# Cauchy

### Notazione

$$\text{Cauchy}(x_0, \gamma)$$

## PDF

$$ f\_{(x_0, \gamma)}(x) = \frac{1}{\pi} \frac{\gamma}{(x- x_0)^2 + \gamma^2}$$
oppure moltiplicando per $\gamma^2/\gamma^2$
$$ f\_{(x_0, \gamma)}(x) = \frac{1}{\gamma\pi} \frac{1}{\left(\cfrac{x- x_0}{\gamma}\right)^2 + 1}$$

### Media e Varianza

La media di $X \sim \text{Cauchy}(x_0, \gamma)$ è $\mu = x_0$.
$X$ non ha varianza.

#### Casi particolari

$$X \sim \text{Cauchy}(0, 1) \implies f_X(x) = \frac{1}{\pi}\frac{1}{x^2 + 1}$$

$$X \sim \text{Cauchy}(0, \gamma) \implies f_X(x) = \frac{1}{\gamma\pi}\frac{1}{(x/\gamma)^2 + 1}$$

## Somma di Cauchy indipendinti

Siano $X \sim \text{Cauchy}(0, \sigma)$ e $Y \sim \text{Cauchy}(0, \tau)$ **indipendenti**, ovvero tali che
$$f_X(x) = \frac{1}{\sigma\pi}\frac{1}{(x/\sigma)^2 + 1}$$
$$f_Y(y) = \frac{1}{\tau\pi}\frac{1}{(y/\tau)^2 + 1}$$
$$f\_{X,Y}(x,y) = f_X(x)f_Y(y)$$

Sia la v.a. $Z = X+Y$.
Grazie al [teorema 5.2.9](Random%20Sample.md#teorema-5-2-9-convolution-formula) possiamo dire che $Z$ avrà pdf
$$f_Z(z) = \int\_{-\infty}^{\infty}f_X(w)f_Y(z-w) , dw = \int\_{-\infty}^{\infty} \frac{1}{\sigma\pi}\frac{1}{(w/\sigma)^2 + 1}\frac{1}{\tau\pi}\frac{1}{((z-w)/\tau)^2 + 1}$$
Integrando accuratamente per *decomposizioni parziali* e qualche *antidifferenziazione* otteremo che $$f_Z(z) = \frac{1}{(\sigma + \tau)\pi}\frac{1}{\left(\cfrac{z}{\sigma+\tau}\right)^2 + 1}$$
ovvero $Z$ è una $\text{Cauchy}(0, \sigma + \tau)$.

---

# Esponenziale

## Notazione

$$\text{Exp}(\lambda)$$

## Parametri

$$\lambda > 0$$

## Supporto

$$\mathbb{R}^+$$

## Funzione di ripartizione

$$F(x) = 1 - e^{-\lambda x}$$

## Funzione di densità

$$f(x) = \lambda e^{-\lambda x}$$

## Media

$$\frac{1}{\lambda}$$

## Varianza

$$\frac{1}{\lambda^2}$$

## Funzione generatrice dei momenti

$$\left(1 - \frac{t}{\lambda}\right)^{-1}$$

## Proprietà

1. Siano $X_1,...,X_n$ v.a. **indipendenti** esponenziali di parametri $\lambda_1, ..., \lambda_n$. Allora la v.a. $\min{{X_1, ..., X_n}}$ è anch'essa una esponenziale di paramtro $\lambda = \lambda_1 + ... + \lambda_n$
1. Siano $X_1,X_2$ due v.a. esponenziali **indipendenti** e di parametri $\lambda_1, \lambda_2$. Allora la v.a. $Z = X_1 + X_2$ avrà densità $$\begin{align\*}
   f_Z(z)
   &= \int\_{0}^{z}f\_{X_1}(w)f\_{X_2}(z-w) , dw\\
   &=\int\_{0}^{z}\lambda_1e^{-\lambda_1w}\lambda_2e^{-\lambda_2(z-w)} , dw\\
   &= \lambda_1\lambda_2e^{-\lambda_2z}\int\_{0}^{z}e^{(\lambda_2 - \lambda_2)w},dw\\
   &= \begin{cases}
   \\lambda^2ze^{-\lambda z} &\mbox{se } \lambda_1 = \lambda_2 = \lambda\\
   \\frac{\lambda_1\lambda_2}{\lambda_2-\lambda_1}(e^{-\lambda_1 z} - e^{-\lambda_2 z}) &\mbox{se } \lambda_1 \neq \lambda_2
   \\end{cases}
   \\end{align\*}$$
1. Siano $X_1, ..., X_n$ **i.i.d.** $U\left\[ 0,1 \right\]$, allora $$\lim\_{n \to \infty} n \min{{X_1, ..., X_n}} \sim \text{Exp}(1)$$
1. Sia $X \sim \text{Exp}(\lambda)$, allora $kX \sim \text{Exp}(\lambda / k)$. Un caso particolare è $\lambda X \sim \text{Exp}(1)$.
1. Sino $X_1, ..., X_n$ **i.i.d.** $\text{Exp}(\lambda)$, allora $X_1 + ... + X_n \sim \Gamma(n, 1/\lambda)$ (vedi [Gamma](Distribuzioni.md#gamma)). ^9fe8ff
1. $\hat\lambda\_{ML} = 1/\overline{X}$, con *bias* $b = \lambda/(n-1)$. Perciò lo stimatore di massima verosimiglianza non distorto sarà $\hat\lambda^\**{ML} = \hat\lambda*{ML} - b$ .
1. $I(\lambda) = \lambda^{-2}$

---

# Poisson

## Notazione

$$\text{Poisson}(\lambda)$$

## Parametri

$$\lambda > 0$$

## Supporto

$$\mathbb{N}^+$$

## Funzione di ripartizione

$$F(x) = \frac{\Gamma(n+1, \lambda)}{x!}$$

## Funzione di densità

$$f(x) = \frac{\lambda^x}{x!} e^{-\lambda}$$

## Media

$$\lambda$$

## Varianza

$$\lambda$$

## Funzione generatrice dei momenti

$$e^{\lambda(e^t - 1)}$$

## Proprietà

Siano $Y_1 \sim \text{Poisson}(\lambda_1)$ e $Y_2 \sim \text{Poisson}(\lambda_2)$ **indipendenti**.
Allora avremo che

* $Y = Y_1 + Y_2$ è una poisson di parametro $\lambda = \lambda_1 + \lambda_2$.
* La distribuzione di $Y_1$ **condizionata** al fatto che $Y = n$ è una **binomiale** di parametri $n$ e $\lambda_1/\lambda$.

---

# Chi Quadro

La **distribuzione chi quadrato** è la distribuzione della somma dei quadrati di variabili aleatorie normali **indeipendenti**.

## Notazione

$$\chi^2\_{k}$$

## Parametri

* **Gradi di lebertà** $$k \in \mathbb{N} \setminus { 0 }$$

## Supporto

$$\left\[ 0, \infty \right\]$$

## Funzione di ripartizione

$$F(x) = \frac{1}{\Gamma\left( \frac{k}{2} \right)} \cdot \gamma\left( \frac{k}{2}, \frac{x}{2} \right)$$ dove $$\gamma(s,x) = \int\_{0}^{x}t^{s-1}e^{-t} , dt$$

## Funzione di densità

$$f(x) = \frac{1}{ 2^{k/2} \cdot \Gamma\left( \frac{k}{2} \right)} x^{k/2 - 1} e^{-x/2}$$

## Media

$$k$$

## Varianza

$$2k$$

## Funzione generatrice dei momenti

$$M_X(t) = (1 - 2t)^{}-k/2 ;; \forall t \in \left\[ -\frac{1}{2}, \frac{1}{2} \right\]$$

## Proprietà

* La somma di due v.a. $\chi^2_n, \chi^2_m$ è una $\chi^2\_{n+m}$
* Sia $X_1, ..., X_n$ un campione di normali $N(\mu, \sigma^2)$. Allora lo stimatore $S^2$ segue una distribuzione $$S^2 \sim \frac{\sigma^2}{n-1}\chi^2\_{n-1} \iff (n-1)\frac{S^2}{\sigma^2} \sim \chi^2\_{n-1}$$

---

# Gamma

## Notazione

* **Shape-Scale** $$\Gamma(k, \theta)$$
* **Shape-Rate** $$\Gamma(\alpha, \beta)$$

## Parametri

* **Shape**: $k = \alpha \in \mathbb{R}^+$
* **Scale**: $\theta = \beta^{-1} \in \mathbb{R}^+$
* **Rate**: $\beta = \theta^{-1} \in \mathbb{R}^+$

## Funzione di ripartizione

$$P(k,x) = \frac{\gamma(k, x/\theta)}{\Gamma(k)}$$ dove $$\gamma(a,x) = \int_0^x e^{-t}t^{a-1} , dt$$ e
$$\Gamma(x) =
\\begin{cases}\int_0^{\infty}e^{-t}t^{x-1} , dt &\mbox{per } x \in \mathbb{R}\\
x-1! &\mbox{per } x \in \mathbb{N}
\\end{cases}$$

## Funzione di densità

$$f(x) = \frac{\theta^{-k}}{\Gamma(k)} x^{k-1}e^{-x/\theta}$$

## Media

$$k\theta = \frac{\alpha}{\beta}$$

## Varianza

$$k \theta^2 = \frac{\alpha}{\beta^2}$$

## Funzione generatrice dei momenti

$$M_X(t) = (1-t\theta)^{-k} ;; \forall t  \< \theta^{-1}$$

## Proprietà

### Cambiamento di scala

Sia $X \sim \Gamma(k, \theta)$ allora $aX \sim \Gamma(k, a\theta)$.
Oppure espresso con notazione **shapre-rate** avremo che se $X \sim \Gamma(\alpha, \beta)$ allora $aX \sim \Gamma(\alpha, \beta/c)$.

### Somme di Gamma

Siano $X_1, ..., X_n$ **indipendenti** tali che $X_i \sim \Gamma(k_i, \theta)$, allora $X_1 + ... + X_n \sim \Gamma(k_1 + ... + k_n, \theta)$.

### Altre proprietà importanti

1. $$\Gamma(1, \theta) = \text{Exp}(1/\theta)$$
1. $$X \sim N(0,1) \implies X^2 \sim \Gamma\left(\frac{1}{2}, \frac{1}{2}\right)$$
1. Siano $X_1, ..., X_n \sim N(0,1)$ *i.i.d*, allora $$\sum\_{i=1}^{n}X_i^2 \sim \chi_n^2 = \Gamma\left(\frac{n}{2}, \frac{1}{2} \right)$$
1. Il momento $n$-esimo di una gamma è $$\mathbb{E}\left\[ X^n \right\] = \theta^n\frac{\Gamma(n+k)}{\Gamma(k)}$$
1. La somma $X_1, ..., X_n$ v.a. $\Gamma(k_i, \theta)$ **indipententi** ha distribuzione $$X_1 + ... + X_n \sim \Gamma(k_1 + ... + k_n, \theta)$$
1. Per valori di $k$ abbastanza grandi avremo che la distribuzione gamma converge ad una normale con $\mu = k\theta$ e $\sigma = k \theta^2$.

---

# Distribuzione $t$ di Stundet

## Notazione

$$t(\nu)$$

## Parametri

* **Gradi di libertà** $$\nu \in \mathbb{R}^+$$

## Supporto

$$(-\infty, \infty)$$

## Funzione di densità

$$f(x) = \frac{\Gamma\left( \frac{\nu +1}{2} \right)}{\sqrt{\nu \pi} ; \Gamma\left( \frac{\nu}{2} \right)} \left( 1 + \frac{x^2}{\nu} \right)^{-\dfrac{\nu +1}{2}}$$ 
![\|400](isti-distr-2.png)

## Media

$$\mu = \begin{cases}
0 &\mbox{se } \nu > 0\\
\\texttt{undefined} &\mbox{altrimenti}
\\end{cases}$$

## Varianza

$$\sigma^2 = \begin{cases}
\\dfrac{\nu}{\nu-2} &\mbox{se } \nu > 2\\
\\infty &\mbox{se } 1 \< \nu \leq 2\\
\\texttt{undefined} &\mbox{altrimenti}
\\end{cases}$$

## Funzione generatrice dei momenti

INDEFINITA

---

---

# Discrete

# Uniforme

---

# Bernoulli

---

# Geometrica

---

# Ipergeometrica

---

# Binomiale

---

# Multinomiale (multivariata)

La distribuzione multinomiale è una *generalizzazione* di una binomiale.

## Notazione

$$\text{Multi}(n,k,(p_1,...,p_k))$$

## Parametri

* **Numero di tentativi** $$n \in \mathbb{N}^+$$
* **Numero di possibili eventi (mutualmente disgiunti)** $$k \in \mathbb{N}^+$$
* **Probabilità dei signoli eventi** $$(p_1,...,p_n) \in \left\[ 0,1 \right\]^n : \sum\_{i=1}^{n} p_i = 1$$

## Supporto

$$\bigg{ \mathbf{X} \in {0,1,...,n}^k : \sum\_{i=1}^{k}X_i = n\bigg} \subset \mathbb{N}^k$$

Osservare che il numero di elementi nel supporto è $$\binom{n+k-1}{k-1}$$

## Distribuzione

$$P(X_1 =x_1 ,..., X_k = x_k) = \frac{n!}{x_1! \cdots x_k!}p_1^{x_1} \cdots p_k^{x_k}$$

## Media

$$\mathbb{E}\left\[ X_i \right\] = np_i$$

## Varianza

$$\text{Var}(X_i) = np_i(1-p_i)$$
$$\text{Cov}(X_i, X_j) = -np_ip_j$$

## Proprietà

1. $$\text{Multi}(1,2,(p, 1-p)) \equiv \text{Bernoulli}(p)$$
1. $$n > 2 \implies \text{Multi}(n,2,(p, 1-p)) \equiv \text{Binom}(n, p)$$
