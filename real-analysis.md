---
layout: default
---

# Real Analysis

## Taking Derivatives

Find the derivative of the SRK equation of state with respect to the compressibility factor $$Z$$.

$$f (Z) = Z^3 - Z^2 + (A - B - B^2) Z - AB$$

$$f' (Z) = 3Z^3 - 2Z + (A - B - B^2)$$

## Error Bounds

For our 5th-order Taylor approximation of $$\sin x \approx x - \frac{x^3}{3!} + \frac{x^5}{5!}$$, find a bound $$x_b$$ such that truncation error $$\mid E_5 (x_b) \mid \leq 0.01$$.

$$|E_n (x)| \leq \frac{M {|x - a|} ^ {n + 1}}{(n + 1)!}$$

$$0.01 \leq \frac{|x_b - 0|^6}{6!}$$

$$0.01 (6!) = {(x_b)}^6$$

$$|x_b| \approx 1.39$$

```python
from math import factorial
import numpy as np

x = 1.39 # 5th-order bound xb
sinish_x = x - x**3 / factorial(3) + x**5 / factorial(5)
sin_x = np.sin(x)
print(f'True error = {sinish_x - sin_x:.4f}')
```

```
True error = 0.0019
```

## Stability Bounds

```python
sinish_x = x - x**3 / factorial(3) + x**5 / factorial(5)
```

Find bounds $$x_b$$ such that, within these bounds, a given change in $x$ always produces an equal or smaller change in `sinish(x)`.

$$\frac{\partial {\textbf{sinish} x}}{\partial x} \geq 1 - \frac{3x^2}{3!} + \frac{5x^4}{5!}$$

$$1 \geq 1 - \frac{x_b^2}{2!} + \frac{x_b^4}{4!}$$

$$\frac{x_b^4}{4!} \leq \frac{x_b^2}{2!}$$

$$x_b^2 \leq 12$$

$$x_b \leq \sqrt{12}$$

$$x_b \leq 2 \sqrt 3$$

---

Let $$f (x) = 1.013 x^5 - 5.262 x^3 - 0.01732 x^2 + 0.8389 x - 1.912$$.

1. Evaluate $$f (2.279)$$ by first calculating $${(2.279)}^2$$, $${(2.279)}^3$$, $${(2.279)}^4$$, and $${(2.279)}^5$$ using four-digit rounding arithmetic.

1. Evaluate $$f (2.279)$$ using the formula $$f (x) = (((1.013 x^2 - 5.262) x - 0.01732) x + 0.8389) x - 1.912$$ and four-digit rounding arithmetic.

1. Compute the absolute and relative errors in *(1)* and *(2)*.