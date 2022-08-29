---
---

# Stima per intervalli di confidenza

---

## Definizione Intervallo di confidenza

Sia un [campione](Random%20Sample.md#random-sample) $X_1, ..., X_n$ da una popolazione con [densità](Distribuzioni%20Multivariate.md#joint-pdf) $f_X(x \vert \theta)$, dipendenti da un parametro $\theta$ <u>sconosciuto</u>.
Siano due [statistiche](Random%20Sample.md#46a026) $T_1, T_2$ tali che

1. $T_1(\mathbf{X}) \leq T_2(\mathbf{X})$ per ogni campione $\mathbf{X} \in \mathbb{R}^n$
1. $P(T_1(\mathbf{X}) \leq \theta \leq T_2(\mathbf{X})) = 1 - \alpha$

Allora l'**intervallo** $\left\[ T_1(\mathbf{X}), T_2(\mathbf{X}) \right\]$ si dice **intervallo di confidenza con grado di confidenza** $1 - \alpha$ per $\theta$.

---

## Stima della media di una Normale con varianza nota

Sia un campione [normale](Distribuzioni.md#normale) $X_1, ..., X_n \sim N(\mu, \sigma^2)$ con $\mu$ **sconosciuto** e $\sigma$ **noto**.

Consideriamo l'[ipotesi nulla](Hypothesis%20Testing.md#137feb) $$H_0: \mu = \mu_0$$ e [ipotesi alternatica](Hypothesis%20Testing.md#7a2fae) $$H_1: \mu \neq \mu_1$$

Dalla [teorema del limite centrale](CLT%20-%20Central%20Limit%20Theorem.md#clt-central-limit-theorem) sappiamo che **sotto ipotesi nulla** $H_0$ $$Z = \frac{\overline{X}*n - \mu_0}{\sigma/\sqrt{n}} \sim N(0,1)$$
Pericò dato un generico $k>0$ avremo  che $$P(-k \leq Z \leq k) = \int*{-k}^{k}\frac{1}{\sqrt{2\pi}} e^{-x^2/2} , dx = \Phi(k) - \Phi(-k)$$
Per **simmetria** di una normale standardizzata avremo che $$\Phi(k) - \Phi(-k) = 2\int\_{0}^{k}\frac{1}{\sqrt{2\pi}}e^{-x^2/2} , dx = 2 \Phi^*(k)$$ dove per comodità indichiamo con $$\Phi^*(k) = \int_0^{k}\frac{1}{\sqrt{2\pi}}e^{-x^2/2} , dx$$
Osserivamo che $$-k \leq Z \leq k \iff -k \leq \frac{\overline{X} - \mu_0}{\sigma/\sqrt{n}} \leq k \iff \overline{X} - \frac{k\sigma}{\sqrt{n}} \leq \mu_0 \leq \overline{X} + \frac{k\sigma}{\sqrt{n}}$$
Ovvero $$P(-k \leq Z \leq k) = P(T_1(\mathbf{X}) \leq \mu \leq T_2(\mathbf{X})) = 2 \Phi^\*(k)$$ dove $$T_1(\mathbf{X}) = \overline{X} - \frac{k\sigma}{\sqrt{n}}$$ e $$T_2(\mathbf{X}) = \overline{X} + \frac{k\sigma}{\sqrt{n}}$$

Perciò se volessimo che tale porbabilità sia pari a $1-\alpha$ basterà risolvere l'equazione $$2\Phi^{*}(k) = 1-\alpha$$ $$k = \Phi^{*-1}\left(\frac{1-\alpha}{2}\right)$$
Per esempio, nel nostro caso, ponendo $k$ pari al quantile $\phi\_{1 - \alpha/2}$ otterremo un intervallo di confidenza con probablità $$P(-\phi\_{1-\alpha/2} \leq Z \leq \phi\_{1-\alpha/2}) = (1-\alpha/2) - (1 - (1-\alpha/2)) = 1 - \alpha$$
Se volessimo un grado di confidenza del $95%$ basta verificare che $$1-\alpha = 0.95 \implies \alpha/2 = 0.025 \implies 1 -\alpha/2 = 0.975$$
Basterà consultare la [tabella dei quantili](quantili.pdf) della normale standard, e verificare che $$\phi\_{1-\alpha/2} = \phi\_{0.975} = 1.96$$ 

In conclusione $$P\left(\overline{X} - \frac{1.96\sigma}{\sqrt{n}} \leq \mu_0 \leq \overline{X} + \frac{1.96\sigma}{\sqrt{n}}\right) \approx 0.95$$ ovvero se $\mu_0$ appartiene all'**intervallo aleatorio** $\left\[ T_1, T_2\right\]$  allora possiamo dire con una confidenza del $95%$ che il reale valore della media $\mu$ è $\mu_0$.

### Osservazione importante

Importante osservare che possono esistere svariati intervalli $\left\[ a,b\right\]$ la cui probabilità $$P(\theta_0 \in \left\[a,b \right\]) = 1 - \alpha$$
È però preferibile trovare sempre l'intervallo con **ampiezza** $b-a$ più piccolo possibile.

Nel caso di distribuzioni **simmetriche**, come la normale standard, è possibile dimostrare che quello di ampiezza minima è sempre quello simmetrico e centrato in zero, del tipo $\left\[ -k, k \right\]$ (per $k \in \mathbb{R}^+$).

---

## Stima della media di una Normale con varianza sconosciuta

Sia un campione [normale](Distribuzioni.md#normale) $X_1, ..., X_n \sim N(\mu, \sigma^2)$ con $\mu$ e $\sigma$ **sconosciuti**.

Consideriamo le ipotesi $$H_0: \mu = \mu_0; ; H_1: \mu \neq \mu_1$$
Non conoscendo $\sigma$ potremmo pensare di **stimarlo**, per esempio con la [varianza campionaria](Random%20Sample.md#varianza-campionaria) $S = \sqrt{S^2}$.

Purtroppo però la statistica $$T = \frac{\overline{X} - \mu_0}{S/\sqrt{n}}$$ non segue una [normale standardizzata](Distribuzioni.md#normale-standard) $N(0,1)$, nemmeno sotto ipotesi nulla $H_0$.

Sappiamo però che sotto ipotesi nulla $H_0$, la statistica $T$ segue una [distribuzione t di Student](Distribuzioni.md#distribuzione-t-di-stundet) con $n-1$ *gradi di libertà*.

Perciò, scegliendo due valori $t_1 \leq t_2$, avremo che $$t_1 \leq T \leq t_2 \iff \underbrace{\overline{X} - t_2\frac{S}{\sqrt{n}}}*{T_1} \leq \mu_0 \leq \underbrace{\overline{X} - t_1\frac{S}{\sqrt{n}}}*{T_2}$$ [tabella dei quantili](quantili.pdf) della
Per via della **simmetria** della distribuzione *t* di Student sappiamo che l'intervallo di ampiezza minima è quello **simmetrico**, ovvero con $t_1 = - t_2$.
Perciò consultiamo la [tabella dei quantili](quantili.pdf) della distribuzion *t* di Student e poniamo $t_2 = \phi\_{1-\alpha/2}$.

Quindi $$P(T \in \left\[ - \phi\_{1-\alpha/2}, \phi\_{1-\alpha/2}\right\]) = P(\mu_0 \in \left\[ T_1, T_2 \right\]) = 1 - \alpha$$

Supponiamo di avere $n=10$ e di volere un *grado di confidenza* di $1 - \alpha = 95%$.
Consultando la [tabella dei quantili](quantili.pdf) avremo che
$$\begin{align\*}
1-\alpha &= 0.95\\
\\implies \alpha/2 &= 0.025\\
\\implies 1-\alpha/2 &= 0.975\\
\\implies t_2 &= \phi\_{1-\alpha/2} = \phi\_{0.975} = 2.262
\\end{align\*}$$

---

## Stima tramite MLE

Prendiamo un campione $X_1, ..., X_n$ dipendente da un parametro $\theta$ <u>sconosciuto</u>, e consideriamo le ipotesi $$H_0: \theta = \theta_0;; H_1: \theta \neq \theta_0$$
Sia $\hat\theta\_{ML}$ il [MLE](Stimatore%20di%20Massima%20Verosimiglianza.md#stimatore-di-massima-verosimiglianza-mle) per $\theta$.
Sappiamo che per campioni grandi (asintoticamente) avremo che $$\sqrt{nI(\hat\theta\_{ML})} \cdot (\hat\theta\_{ML} - \theta_0) \sim N(0,1)$$ (vedi [proprietà asintotiche dei MLE](Stimatore%20di%20Massima%20Verosimiglianza.md#proprieta-asintotiche-molto-importanti)).

Perciò definendo la statistica $$Z = \sqrt{nI(\hat\theta\_{ML})} \cdot (\hat\theta\_{ML} - \theta_0)$$ possiamo eseguire la stima per intervalli di confidenza come in precedenza.

Infatti $$P(-\phi\_{1-\alpha/2} \leq Z \leq \phi\_{1-\alpha/2}) = P\left(\hat\theta\_{ML}-\frac{\phi\_{1-\alpha/2}}{\sqrt{nI(\hat\theta\_{ML})}} \leq \theta_0 \leq \hat\theta\_{ML}+\frac{\phi\_{1-\alpha/2}}{\sqrt{nI(\hat\theta\_{ML})}}\right) = 1-\alpha$$

---

## Stima di $p$ per una Binomiale

\[DA FINIRE...\]
