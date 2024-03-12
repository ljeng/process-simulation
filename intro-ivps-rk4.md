# Intro to IVPs

## Well-Posed IVPs

$\frac{\partial y}{\partial t} = f(t, y)$ for $a \leq t \leq b$ with $y (a) = \alpha$

State the problem below in the standard form of an IVP (aka: define $y$, $t$, $f$, $a$, and $\alpha$)

$$a = 0$$
$$\alpha = C_{EB}^0$$
$$t = \tau$$
$$y = C_{EB}$$
$$f (t, y) = -k_f y$$

$$\frac{\partial C_{EB}}{\partial \tau} = k_f C_{EB}$$
$$C_{EB} (\tau = 0) = C_{EB}^0$$

Then, check whether your IVP meets the conditions for having a unique solution.

$$f: \mathbb R^2 \to \mathbb R$$
$f$ is continuous.
$\frac{\partial f}{\partial y} = -kf$ is continuous.

# IVPs

```python
import numpy as np
import matplotlib.pyplot as plt
```

## Euler

```python
def euler(kf, C0_EB, tau_final, h, f):
    tau = np.arange(tau_final + h/2, step=h)
    y = [C0_EB]
    for i in range(len(tau) - 1):
        y.append(y[i] + h * f(tau[i], y[i]))
    plt.plot(tau, y, label='Euler')
```

## RK2

```python
w1 = lambda h, w0, t0: (h**2 / 2 + h + 1) * w0 - h * (h / 2 + 1) * t0 - h**2 / 2
```

```python
def rk2(kf, C0_EB, tau_final, h, f):
    tau = np.arange(tau_final + h/2, step=h)
    y = [C0_EB]
    for i in range(len(tau) - 1):
        y.append(y[i] + h * f(tau[i] + h / 2, y[i] + h / 2 * f(tau[i], y[i])))
    plt.plot(tau, y, label='RK2')
```

# RK4

## Local Error in RK4

```python
import math

y_prime = lambda t, y: y - t
h = 0.1

def rk4(t):
    t_current = 0
    y = math.exp(1) + 1
    while t_current < t and not math.isclose(t_current, t):
        k = [0]
        for j in h * np.array([0, 1/2, 1/2, 1]):
            k.append(y_prime(t_current + j, y + k[-1] * j))
        y += h * np.average(k[1:], weights = [1, 2, 2, 1])
        t_current += h
    return y

t = 0.1
estimate = rk4(t)
exact = math.exp(t + 1) + t + 1
error = estimate - exact
print(f'estimate = {estimate}, exact = {exact}, error = {error}')
```

```
estimate = 4.10416579359294, exact = 4.1041660239464335, error = -2.3035349361322233e-07
```

## Coding RK4

```python
import scipy.integrate

def fun(t, w):
  return w - t

t0 = 0
y0 = np.e + 1
h = 1

def rk4(f, ti, wi, h):
  k = [0]
  for j in h * np.array([0, 1/2, 1/2, 1]):
    k.append(f(ti + j, wi + k[-1] * j))
  w_next = wi + h * np.average(k[1:], weights = [1, 2, 2, 1])
  return w_next

w_next = rk4(fun, t0, y0, h)
w_next_solve_ivp = scipy.integrate.solve_ivp(fun, (t0, t0 + h), [y0], first_step=h).y[0][-1]
print(f'w_next = {w_next}, w_next_solve_ivp = {w_next_solve_ivp}')
```

```
w_next = 9.362013285409914, w_next_solve_ivp = 9.389196103694506
```