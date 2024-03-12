---
layout: default
---

# IVP Systems

## Define an IVP System

$$\begin{array}{|l|l|}
    \hline
    \frac{\partial C_A}{\partial z} = -2 k_1 C_A^2 & C_A (z = 0) = C_A^0 \\
    \frac{\partial C_B}{\partial z} = -k_2 C_B + k_1 C_A^2 & C_B (z = 0) = 0 \\
    \frac{\partial C_A}{\partial z} = -k_2 C_B & C_C (z = 0) = 0 \\
    \hline
\end{array}$$

Put this system, two sequential reactions with three species, into the general form for an IVP system by stating $$t$$, $$u$$, and $$f (t, u)$$. Also state the initial conditions.

$$t = z$$

$$u = \begin{bmatrix}
    C_A \\
    C_B \\
    C_C
\end{bmatrix}$$

$$f (t, u) = \begin{bmatrix}
    -2 k_1 u_1^2 \\
    -k_2 u_2 + k_1 u_1^2 \\
    k_2 u_2 \\
\end{bmatrix}$$

$$t_0 = 0$$

$$a = \begin{bmatrix}
    C_A^0 \\
    0 \\
    0 \\
\end{bmatrix}$$

## RK4 System Code

```python
import numpy as np

def rk4_system(t_start, t_end, f_args, y0, h):
    t = np.arange(t_start, t_end + h/2, step=h)
    n = len(t) - 1
    w = [y0]
    for i in range(n):
        k = [np.zeros(4)]
        for j in h * np.array([0, 1/2, 1/2, 1]):
            k.append(np.array([f(*wi + k[-1] * j) for f in f_args]))
        w.append(w[-1] + h * np.average(k[1:], axis=0))
    return zip(*w)
```