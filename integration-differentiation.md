## Differentiation

$$\frac{\partial f}{\partial x}_{-} = \lim _ {x \to x_0} \frac{f(x) - f(x - h)}{h}$$

$$\frac{\partial f}{\partial x}_{+} = \lim _ {x \to x_0} \frac{f(x + h) - f(x)}{h}$$

If

$$\frac{\partial f}{\partial x}_{-} = \frac{\partial f}{\partial x}_{+}$$

then

$$\frac{\partial f}{\partial x} = \frac{\partial f}{\partial x}_{-} = \frac{\partial f}{\partial x}_{+}$$

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

## Integration

$$\int_a^b f(x) \, dx = \lim_{n \to \infty} \summation_{i = 1}^n h f(a + ih)$$
where
$$h = \frac{b - a}{n}$$