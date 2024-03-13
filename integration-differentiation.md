---
layout: default
---

## Differentiation

$$\frac{\partial f}{\partial x}\_- = \lim _ {x \to x_0} \frac{f(x) - f(x - h)}{h}$$

$$\frac{\partial f}{\partial x}\_+ = \lim _ {x \to x_0} \frac{f(x + h) - f(x)}{h}$$

If

$$\frac{\partial f}{\partial x}\_- = \frac{\partial f}{\partial x}\_+$$

then

$$\frac{\partial f}{\partial x} = \frac{\partial f}{\partial x}\_- = \frac{\partial f}{\partial x}\_+$$

```python
import numpy as np

def test_np_gradient():
    xx = np.linspace(-0.1, np.pi + 0.1, 100)
    yy = np.sin(xx)
    dyy = np.cos(xx)
    dyy_approx = np.gradient(yy, xx)
    error = dyy_approx - dyy
    mean_abs_error = np.mean(np.abs(error))
    print(f'{mean_abs_error}')

test_np_gradient()
```

```
0.00015176750916622188
```

```python
import sympy

def test_sympy():
  x, k = sympy.symbols('x k')
  f = sympy.sin(x**2 + k)
  df = sympy.diff(f, x)
  print(f'{f = }')
  print(f'{df = }')

test_sympy()
```

```
f = sin(k + x**2)
df = 2*x*cos(k + x**2)
```

Use the most accurate three-point formula to determine each missing entry in the following table.

| $$x$$ | $$f (x)$$ | $$f' (x)$$ |
| --- | --- | --- |
| 1.1 | 9.025013 | 17.76970 |
| 1.2 | 11.02318 | 22.19364|
| 1.3 | 13.46374 | 27.10735|
| 1.4 | 16.44465 | 32.51085 |

```python
x = [1.1, 1.2, 1.3, 1.4]
h = (x[-1] - x[0]) / (len(x) - 1)
f = [9.025013, 11.02318, 13.46374, 16.44465]
startpoint = lambda h: (-3 * f[0] + 4 * f[1] - f[2]) / 2 / h
print(startpoint(h))
midpoint = lambda i, h: (-f[i - 1] + f[i + 1]) / 2 / h
print(midpoint(1, h))
print(midpoint(2, h))
endpoint = lambda h: (f[-3] - 4 * f[-2] + 3 * f[-1]) / 2 / h
print(endpoint(h))
```

```
17.76970500000003
22.193635000000015
27.107350000000014
32.510850000000055
```

## Integration

$$\int_a^b f(x) \, dx = \lim_{n \to \infty} \sum_{i = 1}^n h f(a + ih)$$

where

$$h = \frac{b - a}{n}$$

Use the Midpoint rule to approximate the following integral.

$$\int_1^{1.5} x^2 \ln x \, dx$$

```python
import math

x = (1 + 1.5) / 2
print((1.5 - 1) * x**2 * math.log(x))
```

```
0.1743308994642264
```