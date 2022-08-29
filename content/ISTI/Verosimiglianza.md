---
---

# Verosimiglianza

## Likelihood function

Sia un [campione](Random%20Sample.md#random-sample) $\mathbf{X} = (X_1, ..., X_n)$ dipendente da una serie di parametri $\theta_1, ..., \theta_k$, con [densità congiunta](Distribuzioni%20Multivariate.md#joint-pdf) $f\_{\mathbf{X}}(\mathbf{x} \vert \theta_1, ..., \theta_k)$.
Supponiamo che il **campione osservato** sia $\mathbf{X} = \mathbf{x}$, allora la **funzione di verosimiglianza** (o **likelihood function**) è una funzione definita come $$L(\theta_1, ..., \theta_k \vert \mathbf{x}) = f\_{\mathbf{X}}(\mathbf{x} \vert \theta_1, ..., \theta_k) = \prod\_{i=1}^{n}f\_{X_i}(x_i \vert \theta_1, ..., \theta_k)$$

Osservare che se $\mathbf{X}$ è **discreto** allora avremo che $$L(\theta_1, ..., \theta_k \vert \mathbf{x}) = P\_{\theta_1, ..., \theta_k}( \mathbf{X} = \mathbf{x})$$

Supponiamo per esempio che $\mathbf{X}$ dipenda da un solo parametro $\theta$ (sconosciuto).
Se troviamo due punti $\theta_1, \theta_2$ tali che $$L(\theta_1 \vert \mathbf{x}) > L(\theta_2 \vert \mathbf{x})$$ allora avremo che il campione osservato $\mathbf{x}$ è più propenso ad avere $\theta = \theta_1$ anziché $\theta = \theta_2$, il che può essere interpretato come indicazione che è più plausibile che $\theta_1$ sia il reale parametro anziché $\theta_2$.

Se invece $\mathbf{X}$ è una **continua** allora avremo che (se $f\_\\mathbf{X}$ è continua in $\mathbf{x}$) per ogni $\varepsilon > 0$ <u>sufficientemente piccolo</u> allora 
$$P\_\\theta(\mathbf{x}-\varepsilon \< X \< \mathbf{x}+\varepsilon) \approx 2\varepsilon f(\mathbf{x} \vert \theta) = 2\varepsilon L(\theta \vert \mathbf{x})$$

Perciò il rapporto tra due likelihood function di due parametri $\theta_1, \theta_2$ da un'*approssimazione* del rapporto delle probabilità che venga osservato $\mathbf{x}$ in un intervallo abbastanza piccolo (dati i due parametri), ovvero+
$$\frac{P\_{\theta_1}(\mathbf{x}-\varepsilon \< X \< \mathbf{x}+\varepsilon)}{P\_{\theta_2}(\mathbf{x}-\varepsilon \< X \< \mathbf{x}+\varepsilon)} \approx \frac{L(\theta_1 \vert \mathbf{x})}{L(\theta_2 \vert \mathbf{x})}$$

## Principio di Verosimiglianza

Siano due campioni osservati $\mathbf{x}$ e $\mathbf{y}$.
Se la verosimiglianza $L(\theta \vert \mathbf{x})$ è proporzionale a $L(\theta \vert \mathbf{y})$ per una data cosante $C\_{\mathbf{x}, \mathbf{y}}$ **indipendentemente** da $\theta$, ovvero $$L(\theta \vert \mathbf{x}) = C\_{\mathbf{x}, \mathbf{y}} \cdot L(\theta \vert \mathbf{y}) ;; \forall \theta$$ allora si può concludere che $\mathbf{x}$ e $\mathbf{y}$ hanno un **campionamento identico**.
