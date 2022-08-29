---
---

# Problem set 2

## Lecture 3 Exercises

### Exercise 9

Use [Myerson’s Lemma](../3%20-%20Myerson%E2%80%99s%20Lemma.md#theorem-mayerson-s-lemma) to prove that the [Vickrey auction](../2%20-%20Mechanism%20Design%20Basics.md#vickrey-s-second-price-auctions) is the unique single-item auction that is [DSIC](../2%20-%20Mechanism%20Design%20Basics.md#a63f67), always awards the good to the highest bidder, and charges losers 0.

#### Solution

È facile verificare che la regola di assegnazione $\mathbf{x}$ che assegna l'oggetto al più alto offerente è [monotona](../3%20-%20Myerson%E2%80%99s%20Lemma.md#3c29c4).
Infatti, fissiando un $i$ e un $\mathbf{b}*{-i}$ e $B = \max{{b_j : b_j \in \mathbf{b}*{-i}}}$, si può vedere che al variare dell'offerta $b_i$ avremo che:

* $\mathbf{x}(b_i, \mathbf{b}\_{-i}) = 0$ per ogni $b_i \leq B$.
* $\mathbf{x}(b_i, \mathbf{b}\_{-i}) = 1$ per ogni $b_i > B$.

Il punto [(a)](../3%20-%20Myerson%E2%80%99s%20Lemma.md#d589da) ci garantisce che se $\mathbf{x}$ è monotona allora è anche [implementabile](../3%20-%20Myerson%E2%80%99s%20Lemma.md#1898c6) (ovvero abbiamo DSIC).
Il punto [(b)](../3%20-%20Myerson%E2%80%99s%20Lemma.md#3bc8f8) invece garanti l'esistenza di un **unico** sistema di pagamento $\mathbf{p}$.
Il punto [(c)](../3%20-%20Myerson%E2%80%99s%20Lemma.md#9c8cc8) ci dice invece che il pagamento è definito tramite una [formula esplicita](../3%20-%20Myerson%E2%80%99s%20Lemma.md#232507), ottenendo che
$$
p_i(b_i, \mathbf{b}\_{-i}) = \begin{cases}
B &\mbox{se } b_i > B\\
0 &\mbox{se } b_i \leq B
\\end{cases}
$$
ovvero lo schema di pagamento del [Vickrey auction](../2%20-%20Mechanism%20Design%20Basics.md#vickrey-s-second-price-auctions).

---

### Exercise 10

Use the ["payment difference sandwich"](../3%20-%20Myerson%E2%80%99s%20Lemma.md#af2847)  in the [proof of Myerson's Lemma](../3%20-%20Myerson%E2%80%99s%20Lemma.md#proof-of-myerson-s-lemma-informal) to prove that if an allocation rule **is not** [monotone](../3%20-%20Myerson%E2%80%99s%20Lemma.md#3c29c4), then it **is not** [implementable](../3%20-%20Myerson%E2%80%99s%20Lemma.md#1898c6).

#### Solution

Abbiamo che dati due valori $0 \< z \leq y$, se $\mathbf{x}$ è monotona allora
$$ z \cdot \left\[ x(z) - x(y) \right\] \geq \Delta_p \geq y \cdot \left\[ x(z) - x(y) \right\] $$
dove $$\Delta_p = p(y) - p(z)$$
Il precedente intervallo può esistere (ovvero è **non vuoto**) solamente se $\mathbf{x}$ è **monotona**.
Infatti, supponiamo che $v_i = z$.
Se $\mathbf{x}$ fosse **non** monotona, allora esisterebbe certamente un $y > z$ tale che $x(y) \< x(z)$.
In tal caso avremo che la differenza $x(y) - x(z) \< 0$, e quindi avremo che $\Delta_p$ deve necessariamente appartenere all'intervallo
$$ z \cdot \left\[ x(z) - x(y) \right\] \geq \Delta_p \geq y \cdot \left\[ x(z) - x(y) \right\] $$
e questo intervallo è vuoto perche $z \< y$ $\square$.

---

### Exercise 11

We concluded the [proof of Myerson’s Lemma](../3%20-%20Myerson%E2%80%99s%20Lemma.md#proof-of-myerson-s-lemma-informal) by giving a *"proof by picture"* that coupling a monotone and piecewise constant allocation rule $\mathbf{x}$ with the payment formula

$$p_i(b_i, \mathbf{b}*{-i}) = \sum*{j=1}^{\ell} z_j \cdot \left\[ \text{salto di } x_i(\cdot, , \mathbf{b}*{-i}) \text{ in } z_j \right\]$$
where $z_1,...,z*\\ell$ are the **breakpoints** of the allocation function $x_i(\cdot, \mathbf{b}\_{-i})$ in the range $\left\[0, b_i \right\]$, yields a DSIC mechanism. ^8fc753

Where does the proof-by-picture break down if the piecewise constant allocation rule $\mathbf{x}$ is **not** monotone?

#### Solution

Osserviamo cosa accade *graficamente* se si dichiara di più del vero nel caso in cui $\mathbf{x}$ non è monotona.

![](exercise11-1.png)
Osservare che $p(b)$ (nel caso in cui $b>v$) racchiude un rettangolo tratteggiato.
Ciò sta ad indicare un "**pagamento negativo**", ovvero dei soldi da ricevere anziché saldare.
Ciò accade perché avviene un *"salto"* verso il basso, e quindi viene sottratto del pagamento anziché aggiunto.

In colcusione, se $\mathbf{x}$ è non monotona, potrebbe accadere di avere utilità maggiore dichiarando il falso (in questo caso di più).

---

### Exercise 12

Give a purely algebraic proof that coupling a monotone and piecewise constant allocation rule x with the [payment rule](Exercise%20Set%202.md#8fc753) yields a DSIC mechanism.

#### Solution

Fissiamo un player $i$ e consideriamo il caso in cui dichiara il vero $b_i = v_i$.
La sua utilità sarà pari a
$$u_i(b_i, \mathbf{b}*{-i}) = v_i \cdot x_i(z*\\ell) - \sum\_{j = 1}^\ell z_j \cdot (x_i(z_j) - x_i(z\_{j-1}))$$
dove $z_0 = 0$ e $z_1, ..., z\_\\ell$ i punto di $x_i(\cdot, , \mathbf{b}\_{-i})$ dove avvengono i salti, rispetto all'intervallo $\left\[ 0, b_i \right\]$.

**Immagine**

Vediamo ora cosa accadrebbe se dovesse offrire meno $b_i = y^{(-)} \< v_i$.
In tal caso l'utilità sarà
$$u_i(y^{(-)}, \mathbf{b}*{-i}) = v_i \cdot x_i(z_m) - \sum*{j = 1}^m z_j \cdot (x_i(z_j) - x_i(z\_{j-1}))$$
dove $z_0 = 0$ e $z_1, ..., z_m$ i punto di $x_i(\cdot, , \mathbf{b}\_{-i})$ dove avvengono i salti, rispetto all'intervallo $\left\[ 0, y^{(-)} \right\]$.

Osserviamo che essendo $y^{(-)} \< v_i$ allora $m \leq \ell$, ovvero il numero di gradini non può essere maggiore rispetto a prima.

* **Caso $m = \ell$**. In questo caso avremo che la differenza di utilità sarà pari a
  $$u_i(v_i, \mathbf{b}*{-i}) - u_i(y^{(-)}, \mathbf{b}*{-i}) = 0$$
* **Caso $m \< \ell$**. In tal caso avremo che $p_i(b_i) > p_i(y^{(-)})$, perciò
  $$\begin{align\*}
  u_i(v_i, \mathbf{b}*{-i}) - u_i(y^{(-)}, \mathbf{b}*{-i})
  &= v_i \cdot (x_i(v_i) - x_i(y^{(-)})) - p_i(v_i) + p_i(y^{(-)})\\
  &= v_i \cdot (x_i(v_i) - x_i(y^{(-)})) + \underbrace{\left\[p_i(y^{(-)}) - p_i(v_i)\right\]}*{\< 0}\\
  &> v_i \cdot (x_i(v_i) - x_i(y^{(-)}))\\
  &= v_i \cdot \underbrace{(x_i(z*\\ell) - x_i(z_m))}*{\geq 0}\\
  &\geq 0
  \\end{align\*}$$
  Ovvero $u_i(v_i, \mathbf{b}*{-i}) > u_i(y^{(-)}, \mathbf{b}\_{-i})$ (non conviene dichiarare meno).

Simmetricamente, possiamo applicare lo stesso ragionamento nel caso in cui si dichiara di più $b_i = y^{(+)} > v_i$.

Infatti, l'utilità sarà
$$u_i(y^{(+)}, \mathbf{b}*{-i}) = v_i \cdot x_i(z_t) - \sum*{j = 1}^t z_j \cdot (x_i(z_j) - x_i(z\_{j-1}))$$
dove $z_0 = 0$ e $z_1, ..., z_t$ i punto di $x_i(\cdot, , \mathbf{b}\_{-i})$ dove avvengono i salti, rispetto all'intervallo $\left\[ 0, y^{(+)} \right\]$.

Osserviamo che essendo $y^{(+)} > v_i$ allora $t \geq \ell$, ovvero il numero di gradini non può essere minore rispetto a prima.

* **Caso $t = \ell$**. In questo caso avremo che la differenza di utilità sarà pari a
  $$u_i(v_i, \mathbf{b}*{-i}) - u_i(y^{(+)}, \mathbf{b}*{-i}) = 0$$
* **Caso $t > \ell$**. In tal caso avremo che $p_i(y^{(+)}) > p_i(b_i)$.
  Inoltre per monotonia $x_i(y^{(+)}) \geq x_i(v_i)$. Perociò avremo che  
  $$\begin{align\*}
  u_i(v_i, \mathbf{b}*{-i}) - u_i(y^{(+)}, \mathbf{b}*{-i})
  &= v_i \cdot (x_i(v_i) - x_i(y^{(+)})) - p_i(v_i) + p_i(y^{(+)})\\
  &= v_i \cdot \underbrace{(x_i(v_i) - x_i(y^{(+)}))}*{\leq 0} + \left\[p_i(y^{(+)}) - p_i(v_i)\right\]\\
  &\geq p_i(y^{(+)}) - p_i(v_i)\\
  &> 0
  \\end{align\*}$$
  Ovvero $u_i(v_i, \mathbf{b}*{-i}) > u_i(y^{(+)}, \mathbf{b}\_{-i})$ (non conviene dichiarare di più).

Con lo stesso ragionamento si può dimostrare anche nel caso di funzioni $x_i(\cdot)$ differenziabili $\square$.

---

## Lecture 4 Exercises

### Exercise 13

Consider the following extension of the sponsored search setting discussed in lecture.
Each bidder $i$ now has a **publicly known quality** $\beta_i$ (in addition to a private valuation $v_i$ per click).

As usual, each slot $j$ has a CTR $\alpha_j$, and $\alpha_1 \geq \alpha_2 \geq ··· \geq \alpha_k$.
We assume that if bidder $i$ is placed in slot $j$, its probability of a click is $\beta_i\alpha_j$ — thus, bidder $i$ derives value $v_i\beta_i\alpha_j$ from this outcome.

Describe the surplus-maximizing allocation rule in this generalized sponsored search setting.
Argue that this rule is monotone.
Give an explicit formula for the per-click payment of each bidder that extends this allocation rule to a DSIC mechanism.

#### Solution

$$
x_i(b_i, \mathbf{b}*{-i}) = \begin{cases}
\\beta_i\alpha_j &\text{se a } i \text{ viene assegnato lo slot } j\\
\\
0 &\text{altrimenti}
\\end{cases}
$$
Senza perdita di generalità, ordiniamo i player nel seguente ordine
$$
v_1\beta_1 \geq v_2\beta_2 \geq ... \geq v_n\beta_n
$$
In tal modo, quello che si vuole massimizzare è
$$
\\sum*{i=1}^{k} v_i\beta_i\alpha_i
$$
Ordinando nello stesso modo in base alle offerte dichiarate (ovvero $b_1\beta_1 \geq ... \geq b_n\beta_n$).
Una regola di allocazione che massimizza il social-surplus è quindi quella che assegna i $k$ slot ai primi $k$ player secondo l'ordine precedentemente descritto.
In tal caso quindi avremo come social surplus la seguente quantità
$$
\\sum\_{i=1}^{k} b_i \cdot x_i(b_i) = \sum\_{i=1}^{k} b_i\beta_i\alpha_i
$$
Se tale regola di allocazione $\mathbf{x}$ è DSIC allora il social-surplus sarà **massimizzato**.

Grazie al [Mayerson's Lemma](../3%20-%20Myerson%E2%80%99s%20Lemma.md#theorem-mayerson-s-lemma) per dimostrare che $\mathbf{x}$ è DSIC basta dimostrare che $\mathbf{x}$ è [monotona](../3%20-%20Myerson%E2%80%99s%20Lemma.md#3c29c4).

Fissiamo un $i$, un $\mathbf{b}*{-i}$ e vediamo come varia $x_i(z, \mathbf{b}*{-i})$ al crescere di $z$.
Consideriamo senza perdita di generalità che i CTR siano ordinati in modo tale che $\beta_1\alpha_1 \geq ... \geq \beta_k\alpha_k$ (esattamente come le offerte).
È facile verificare che $x_i(\cdot, \mathbf{b}*{-i})$ è fatta a gradini esattamente come nell'asta sposorizzata semplice
![](exercise-13.png)
facendo salti di magnitudo $\beta_j\alpha_j - \beta*{j+1}\alpha\_{j+1}$ nel punto $b_j\beta_j$.

Perciò, per $z \in \left\[ b_j\beta_j, ;; b\_{j-1}\beta\_{j-1}\right.)$ avremo che $x_i(z) = \beta_j\alpha_j$, per ogni $j \leq k$.
Aumentando $z \geq b\_{j-1}\beta\_{j-1}$ avremo che $x_i(z)$ **non diminuisce mai**, assumendo un valore $\beta\_{j-1}\alpha\_{j-1} \geq \beta_j\alpha_j$.
Perciò $x_i(\cdot)$ è *monotona*.

Infine lo schema di pagamento sarà
$$
p_i(b_i, \mathbf{b}*{-i}) = \sum*{j=i}^{k} \beta_j \cdot \left\[ b_j \cdot (\alpha_j - \alpha\_{j+1}) \right\]
$$
dove $\alpha\_{k+1} = 0$ $\square$.

---

### Exercise 14

Consider an arbitrary [single-parameter environment](../3%20-%20Myerson%E2%80%99s%20Lemma.md#single-parameter-environments), with feasible set $X$.
The surplus-maximizing allocation rule is $\mathbf{x}(\mathbf{b}) = arg \max\_{(x_1,...,x_n) \in X} \sum\_{i=1}^{n}b_ix_i$.
Prove that this allocation rule is monotone.
*\[You should assume that ties are broken in a deterministic and consistent way, such as lexicographically.\]*

#### Solution

Assumiamo per assurdo che la regola di allocazione $\mathbf{x}(\mathbf{b}) = arg \max\_{(x_1,...,x_n) \in X} \sum\_{i=1}^{n}b_ix_i$ che massimizza il *surplus* sia **non monotona**.

Perciò $\mathbf{x}$ è **non monotona** se esiste un $i$ tale che la funzione $x_i = x_i(z, \mathbf{b}\_{-i})$ è **non non-decrescente**, ovvero tale che esistono due $z,y$ tali che $z \< y$ e $x_i(z) > x_i(y)$.

Se $\mathbf{x}(\mathbf{b})$ massimizza $\sum\_{i=1}b_ix_i$ allora certamente massimizza $\mathbf{x}(c \cdot \mathbf{b})$ per ogni $c > 1$.
Più precisamente avremo che $\mathbf{x}(c \cdot \mathbf{b}) = c \cdot \mathbf{x}(\mathbf{b})$.

Se però $\mathbf{x}$ è non monotona allora esiste certamente un $\hat{c} > 1$ tale $x_i(\hat{c} \cdot b_i) \< x_i(b_i)$.

Consideriamo ora una $\mathbf{x^*}$ **monotona** totalmente simile ad $\mathbf{x}$ con la differenza che $x^*\_i(\cdot)$ è **non decrescente**.

Allora avremo che per un $\hat{c}$ sufficientemente grande
$$\mathbf{x^*}(\hat{c} \cdot \mathbf{b}) > \mathbf{x}(\hat{c} \cdot \mathbf{b}) \implies \hat{c} \cdot \mathbf{x^*}(\mathbf{b}) > \hat{c} \cdot \mathbf{x}(\mathbf{b}) \implies \mathbf{x^\*}(\mathbf{b}) > \mathbf{x}(\mathbf{b})$$
ovvero $\mathbf{x}$ non massimizzava $\sum\_{i=1}b_ix_i$ $\square$.

---

### Exercise 15

Continuing the previous exercise, restrict now to feasible sets $X$ that contain only $0$-$1$ vectors – that is, each bidder either wins or loses.
We can thus identify each feasible outcome with a *"feasible set"* of bidders (the winners in that outcome).
Assume further that the environment is *"downward closed"*, meaning that subsets of a feasible set are again feasible.

Recall from lecture that [Myerson’s payment formula](../3%20-%20Myerson%E2%80%99s%20Lemma.md#232507) dictates that a winning bidder pays its *"critical bid"* $\theta_i$ — the lowest bid at which it would continue to win.

Prove that, when $S^*$ is the set of winning bidders and $i \in S^*$, $i$’s critical bid $\theta_i$'s equals the difference between:
(i) the maximum surplus of a feasible set that excludes $i$ (you should assume there is at least one such set); and
(ii) the surplus $\sum\_{j \in S^*\\setminus{i}} v_j$ of the bidders other than $i$ in the chosen outcome $S^*$.

Also, is this dfference always **non-negative**? ^23a43f

**Remark:** In the above sense, a winning bidder pays its *"externality"* — the surplus loss it imposes on others.

#### Solution

Dalla  [formula dei pagamenti](../3%20-%20Myerson%E2%80%99s%20Lemma.md#232507) sappiamo che il pagamento di un player $i \in S$ sarà
$$p_i(b_i) = \theta_i \cdot \left\[ \text{salto in } \theta_i \right\] = \theta_i$$
o più in generale
$$p_i(b_i, \mathbf{b}\_{-i}) = \begin{cases}
0 &b_i \< \theta_i\\
\\theta_i &b_i \geq \theta_i
\\end{cases}$$

Si vule dimostrare che
$$p_i(b_i, \mathbf{b}*{-i}) = \theta_i = \left\[ \max*{(x_1,...,x_n)}\sum\_{j \neq i}v_j \cdot x_j(\mathbf{b}*{-i}) \right\] - \sum*{j \in S^\* \setminus {i}}v_j$$ ^fd6c21

Osserviamo innanzitutto che tale differenza è sempre **[non negativa](Exercise%20Set%202.md#23a43f)**.
Infatti, supponiamo che nell'insieme delle soluzioni ammissibili $X$ ci siano vettori $\mathbf{x}$ con <u>al più</u> $k$ $1$.
Allora nel primo elemento della sottrazione avremo le $k-1$ *valutazioni* più alte (esclusa $v_i$) mentre nel secondo elemento avremo semplicemente <u>al più</u> $k-1$ valutazioni qualasiasi (sempre esclusa $v_i$).
Ciò garantisce sempre che $p_i \geq 0$.

DA FINIRE...

---

### Exercise 16

Continuing the [previous exercise](Exercise%20Set%202.md#exercise-15), consider a $0$-$1$ downward-closed single-parameter environment.

Suppose you are given a *"black box"* that can compute the surplus-maximizing allocation rule $\mathbf{x}(\mathbf{b})$ for an arbitrary input $\mathbf{b}$.

Explain how to compute the payments identified in the previous exercise by invoking this black box multiple times.

#### Solution

Indichiamo con $\phi$ tale *"black box"*.
Avremo quindi che dando "in pasto" un qualsiasi $\mathbf{b}$ a $\phi$ 
$$\mathbf{b} ; \xrightarrow{\text{input}} ; \phi ; \xrightarrow{\text{output}} ; \mathbf{x}(\mathbf{b}) = \arg \max\_{(x_1,...,x_n)} \sum\_{i=1}^{n} v_ix_i$$
Per brevità indichiamo con $\phi(\mathbf{b})$ il nostro output.

Dall'[esercizio 15](Exercise%20Set%202.md#fd6c21) abbiamo quindi che data una **qualsiasi soluzione ammissibile** $\mathbf{x}(\mathbf{b}) \in X$, il relativo schema di pagamenti sarà
$$p_i = \phi(\mathbf{b}*{-i}) - \mathbf{x}*{-i} \cdot \mathbf{v}\_{-i} ;; \square$$

---

### Exercise 17

Review the Knapsack problem and what one learns about it in an undergraduate algorithms class.

Specifically:
(i) it is NP-hard;
(ii) with integer values and/or item sizes, it can be solved in pseudopolynomial time via dynamic programming;
(iii) a simple greedy algorithm gives a $\frac12$-approximation in near-linear time;
(iv) rounding and dynamic programming gives a ($1 - \varepsilon$)-approximation in time polynomial in the number $n$ of items and in $\frac{1}{\varepsilon}$ .

Refer to your favorite algorithms textbook or to the videos by the instructor on the course site.

---

### Exercise 18

Prove that the Knapsack auction allocation rule induced by the greedy $\frac12$-[approximation algorithm covered in lecture](../4%20-%20%20Knapsack%20Auctions.md#adfe61) is monotone.

#### Solution

Sappiamo che i player sono ordinati nel seguente ordine
$$\frac{b_1}{w_1} \geq ... \geq \frac{b_i}{w_i} \geq ... \geq \frac{b_n}{w_n}$$
Ordinati in questa maniera, avremo come soluzione ammissibile il vettore
$$\mathbf{x}(\mathbf{b}) = (\underbrace{1 ; 1 ... 1}*k ; \underbrace{0 ; 0 ... 0}*{n-k})$$
Perciò, fissato un generico $i$ e un generico $\mathbf{b}*{-i}$ avremo che $\mathbf{x}$ è monotona, infatti
$$x_i(b_i, \mathbf{b}*{-i}) = \begin{cases}
0 &\text{se } b_i \< w_i \cdot \frac{b_k}{w_k}\\
1 &\text{se } b_i \geq w_i \cdot \frac{b_k}{w_k}
\\end{cases}$$

---

### Exercise 19

The [Revelation Principle](../4%20-%20%20Knapsack%20Auctions.md#ec0935) states that direct-revelation DSIC mechanisms can simulate all other mechanisms in which bidders always have dominant strategies.
Critique the Revelation Principle from a practical perspective.
Name at least one situation in which you might prefer a non-direct-revelation DSIC mechanism over a direct-revelation one.
