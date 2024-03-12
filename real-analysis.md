# Real Analysis

## Taking Derivatives

Find the derivative of the SRK equation of state with respect to the compressibility factor $Z$.

$$f (Z) = Z^3 - Z^2 + (A - B - B^2) Z - AB$$
$$f' (Z) = 3Z^3 - 2Z + (A - B - B^2)$$

## Error Bounds

For our 5th-order Taylor approximation of $\sin x \approx x - \frac{x^3}{3!} + \frac{x^5}{5!}$, find a bound $x_b$ such that truncation error $|E_5 (x_b)| \leq 0.01$.
$$|E_n (x)| \leq \frac{M {|x - a|} ^ {n + 1}}{{(n + 1)}!}$$
$$0.01 \leq \frac{{(x_b - 0)}^6}{6!}$$
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

Find bounds $x_b$ such that, within these bounds, a given change in $x$ always produces an equal or smaller change in `sinish(x)`.
$$\frac{\partial {\textbf{sinish} x}}{\partial x} \geq 1 - \frac{3x^2}{3!} + \frac{5x^4}{5!}$$
$$1 \geq 1 - \frac{x_b^2}{2!} + \frac{x_b^4}{4!}$$
$$\frac{x_b^4}{4!} \leq \frac{x_b^2}{2!}$$
$$x_b^2 \leq 12$$
$$x_b \leq \sqrt{12}$$
$$x_b \leq 2 \sqrt 3$$