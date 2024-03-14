---
layout: default
---

# Interpolation

## Lagrange Code

```python
# Returns the j-th Lagrange function L, as defined by the points x_data, evaluated at point x
def lagrange_Lj(x, j, x_data):
    L = 1
    for i in range(len(x_data)):
        if i != j:
          L *= (x - x_data[i]) / (x_data[j] - x_data[i])
    return L

# Returns the value of the Lagrange polynomial P defined by x_data, y_data, evaluated at point x
def lagrange_P(x, x_data, y_data):
    n = len(x_data)
    assert n == len(y_data)
    return sum(y_data[j] * lagrange_Lj(x, j, x_data) for j in range(n))
```

---

Write a function `my_lin_interp(x, y, X)`, where `x` and `y` are arrays containing experimental data points, and `X` is an array. Assume that `x` and `X` are in ascending order and have unique elements. The output argument, `Y`, should be an array, the same size as `X`, where `Y[i]` is the linear interpolation of `X[i]`. You should not use `interp` from numpy or `interp1d` from scipy.

```python
import bisect
import numpy as np

def my_lin_interp(x, y, X):
    lo = 0
    n = len(x)
    if n > 1 or not X:
        N = len(X)
        Y = []
        append_to_Y = lambda i, element: Y.append(y[i - 1] + (y[i] - y[i - 1]) / (x[i] - x[i - 1]) * (element - x[i - 1]))
        if np.log2(n) * N < N + n:
            for element in X:
                if x[0] <= element <= x[-1]:
                    i = bisect.bisect(x, element, lo)
                    lo = i
                    append_to_Y(i, element)
                else:
                    Y.append(np.nan)
        else:
            i = 0
            for element in X:
                while i < n and x[i] < element:
                    i += 1
                if i == 0 and element < x[0] or i == n and x[-1] < element:
                    Y.append(np.nan)
                else:
                    append_to_Y(i, element)
        return Y
    elif x == X:
        return y
    else:
        raise IndexError
```

---

Suppose you need to construct eight-decimal-place tables for the common, or base-10, logarithm function from $$x = 1$$ to $$x = 10$$ in such a way that linear interpolation is accurate to within $${10}^{-6}$$. Determine a bound for the step size for this table. What choice of step size would you make to ensure that $$x = 10$$ is included in the table?