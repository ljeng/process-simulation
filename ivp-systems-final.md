# IVP Systems

## Define an IVP System

$$\begin{array}{|l|l|}
    \hline
    \frac{\partial C_A}{\partial z} = -2 k_1 C_A^2 & C_A (z = 0) = C_A^0 \\
    \frac{\partial C_B}{\partial z} = -k_2 C_B + k_1 C_A^2 & C_B (z = 0) = 0 \\
    \frac{\partial C_A}{\partial z} = -k_2 C_B & C_C (z = 0) = 0 \\
    \hline
\end{array}$$

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