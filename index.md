---
layout: default
---

# Process Simulation and Mathematical Techniques for Chemical Engineers

## Table of Contents

* [Intro](General/352LectureSlides01-Intro.pdf)
* [Python](General/352LectureSlides02-Python.pdf)
* [NumPy](General/352LectureSlides03-NumPy.pdf)
* [Real Analysis](real-analysis)
    * [Real Analysis](General/352LectureSlides04-Real-Analysis.pdf)
* Taylor's theorem
    * [Bonus Slide Lecture](General/352LectureSlides04.1-bonus_slide_lecture4.png)
    * [Mathematical Preliminaries and Error Analysis](faires-burden/mathematical-preliminaries-error-analysis.pdf)
        * Introduction
        * Review of Calculus
        * Round-Off Error and Computer Arithmetic
        * Errors in Scientific Computation
    * [Approximations with Taylor Series](https://pythonnumericalmethods.berkeley.edu/notebooks/chapter18.02-Approximations-with-Taylor-Series.html)
    * [Discussion on Errors](https://pythonnumericalmethods.berkeley.edu/notebooks/chapter18.03-Discussion-on-Errors.html)
* [Root finding](root-finding) in one dimension, bisection, Newton-Raphson for root finding
    * [Root Finding](General/352LectureSlides06-Root-Finding.pdf)
    * [Solutions of Equations of One Variable](faires-burden/introduction-bisection.pdf)
        * Introduction
        * The Bisection Method
    * [Newton's Method](faires-burden/newton-method.pdf)
    * [Root Finding Problem Statement](https://pythonnumericalmethods.berkeley.edu/notebooks/chapter08.03-The-Profiler.html)
    * [Tolerance](https://pythonnumericalmethods.berkeley.edu/notebooks/chapter19.02-Tolerance.html)
    * [Bisection Method](https://pythonnumericalmethods.berkeley.edu/notebooks/chapter19.03-Bisection-Method.html)
    * [Newton-Raphson Method](https://pythonnumericalmethods.berkeley.edu/notebooks/chapter19.04-Newton-Raphson-Method.html)
    * [Root Finding in Python](https://pythonnumericalmethods.berkeley.edu/notebooks/chapter19.05-Root-Finding-in-Python.html)
* [Big-O notation](big-o)
    * [Big-O](General/352LectureSlides05-BigO.pdf)
    * [Complexity and Big-O Notation](https://pythonnumericalmethods.berkeley.edu/notebooks/chapter08.01-Complexity-and-Big-O.html)
    * [Complexity Matters](https://pythonnumericalmethods.berkeley.edu/notebooks/chapter08.02-Complexity-Matters.html)
    * [The Profiler](https://pythonnumericalmethods.berkeley.edu/notebooks/chapter08.03-The-Profiler.html)
* [Interpolation](interpolation), Lagrange polynomials, cubic splines
    * [Interpolation](General/352LectureSlides07-Interpolation.pdf          )
    * [Interpolation and Polynomial Approximation](faires-burden/introduction-larange-polynomials.pdf)
        * Introduction
        * Lagrange Polynomials
    * [Spline Interpolation](faires-burden/spline-interpolation.pdf)
    * [Interpolation Problem Statement](https://pythonnumericalmethods.berkeley.edu/notebooks/chapter17.01-Interpolation-Problem-Statement.html)
    * [Linear Interpolation](https://pythonnumericalmethods.berkeley.edu/notebooks/chapter17.02-Linear-Interpolation.html)
    * [Cubic Spline Interpolation](https://pythonnumericalmethods.berkeley.edu/notebooks/chapter17.03-Cubic-Spline-Interpolation.html)
    * [Lagrange Polynomial Interpolation](https://pythonnumericalmethods.berkeley.edu/notebooks/chapter17.04-Lagrange-Polynomial-Interpolation.html)
* [Numerical integration and differentiation](integration-differentiation)
    * [Integration & Differentiation](General/352LectureSlides08-Integration-Differentiation.pdf)
    * [Basic Quadrature Rules](faires-burden/basic-quadrature-rules.pdf)
    * [Numerical Differentiation](faires-burden/numerical-differentiation.pdf)
    * [Numerical Differentiation Problem Statement](https://pythonnumericalmethods.berkeley.edu/notebooks/chapter20.01-Numerical-Differentiation-Problem-Statement.html)
    * [Finite Difference Approximating Derivatives](https://pythonnumericalmethods.berkeley.edu/notebooks/chapter20.02-Finite-Difference-Approximating-Derivatives.html)
    * [Approximating of Higher Order Derivatives](https://pythonnumericalmethods.berkeley.edu/notebooks/chapter20.03-Approximating-of-Higher-Order-Derivatives.html)
    * [Numerical Differentiation with Noise](https://pythonnumericalmethods.berkeley.edu/notebooks/chapter20.04-Numerical-Differentiation-with-Noise.html)
    * [Numerical Integration Problem Statement](https://pythonnumericalmethods.berkeley.edu/notebooks/chapter21.01-Numerical-Integration-Problem-Statement.html)
    * [Riemann's Integral](https://pythonnumericalmethods.berkeley.edu/notebooks/chapter21.02-Riemanns-Integral.html)
    * [Trapezoid Rule](https://pythonnumericalmethods.berkeley.edu/notebooks/chapter21.03-Trapezoid-Rule.html)
    * [Simpson's Rule](https://pythonnumericalmethods.berkeley.edu/notebooks/chapter21.04-Simpsons-Rule.html)
    * [Computing Integrals in Python](https://pythonnumericalmethods.berkeley.edu/notebooks/chapter21.05-Computing-Integrals-in-Python.html)
* [PRNG Secrets](prng-secrets)
* [Intro to IVPs](General/352LectureSlides09-Intro-to-IVPs.pdf)
    * [ODE Initial Value Problem Statement](https://pythonnumericalmethods.berkeley.edu/notebooks/chapter22.01-ODE-Initial-Value-Problem-Statement.html)
    * [Reduction of Order](https://pythonnumericalmethods.berkeley.edu/notebooks/chapter22.02-Reduction-of-Order.html)
    * [Numerical Error and Instability](https://pythonnumericalmethods.berkeley.edu/notebooks/chapter22.04-Numerical-Error-and-Instability.html)
* Euler's method
    * [Introduction; Taylor Methods](faires-burden/introduction-taylor-methods.pdf)
    * [The Euler Method](https://pythonnumericalmethods.berkeley.edu/notebooks/chapter22.03-The-Euler-Method.html)
* Better IVP Methods
    * [Intro to IVPs & RK4](intro-ivps-rk4)
    * [Python ODE Solvers](https://pythonnumericalmethods.berkeley.edu/notebooks/chapter22.06-Python-ODE-Solvers.html)
    * [Advanced Topics](https://pythonnumericalmethods.berkeley.edu/notebooks/chapter22.07-Advanced-Topics.html)
* [RK4](General/352LectureSlides10-IVPs-RK4.pdf)
    * [Runge-Kutta Methods](faires-burden/runge-kutta-methods.pdf)
    * [Predictor-Corrector and Runge Kutta Methods](https://pythonnumericalmethods.berkeley.edu/notebooks/chapter22.05-Predictor-Corrector-Methods.html)
* [IVP systems](General/352LectureSlides11-IVP-systems.pdf), RK4 for systems
    * [IVP Systems Final](ivp-systems-final)
    * [Methods for Systems of Equations](faires-burden/methods-systems-equations.pdf)
    * [Final IVPs](General/352LectureSlides12-Final-IVPs.pdf)
* Predictor-corrector & adaptive methods for IVPs
    * [Predictor-Corrector Methods](faires-burden/predictor-corrector-methods.pdf)
    * [Adaptive Techniques](faires-burden/adaptive-techniques.pdf)
    * [Stiff Differential Equations](faires-burden/stiff-differential-equations.pdf)
* Gaussian elimination, inverting & factoring
    * [Linear Systems](linear-systems)
    * [Linear Systems](General/352LectureSlides13-Linear-Systems.pdf)
    * [Linear Systems 2](General/352LectureSlides14-Linear-Systems2.pdf)
    * [Gaussian Elimination](faires-burden/gaussian-elimination.pdf)
    * [Direct Methods for Solving Linear Systems](faires-burden/linear-algebra-matrix-inversion-matrix-factorization-techniques-special-matrices.pdf)
        * Linear Algebra and Matrix Inversion
        * Matrix Factorization
        * Techniques for Special Matrices
    * [Basics of Linear Algebra](https://pythonnumericalmethods.berkeley.edu/notebooks/chapter14.01-Basics-of-Linear-Algebra.html)
    * [Linear Transformations](https://pythonnumericalmethods.berkeley.edu/notebooks/chapter14.02-Linear-Transformations.html)
    * [Systems of Linear Equations](https://pythonnumericalmethods.berkeley.edu/notebooks/chapter14.03-Systems-of-Linear-Equations.html)
    * [Solutions to Systems of Linear Equations](https://pythonnumericalmethods.berkeley.edu/notebooks/chapter14.04-Solutions-to-Systems-of-Linear-Equations.html)
    * [Solve Systems of Linear Equations in Python](https://pythonnumericalmethods.berkeley.edu/notebooks/chapter14.05-Solve-Systems-of-Linear-Equations-in-Python.html)
* Matrices & graph theory for chemistry
* Markov chain generative models for text & polymers (uses matrices)
* Norms, eigenvalues, eigenvectors & iterative matrix solvers
    * [Iterative Methods for Solving Linear Systems](faires-burden/introduction-convergence-vectors-eigenvalues-eigenvectors.pdf)
    * [Matrix Inversion](https://pythonnumericalmethods.berkeley.edu/notebooks/chapter14.06-Matrix-Inversion.html)
    * [Summary and Problems](https://pythonnumericalmethods.berkeley.edu/notebooks/chapter14.07-Summary-and-Problems.html)
* Intro to optimization
    * [Optimization](General/352LectureSlides15-Optimization.pdf)
    * [Optimization 2](352LectureSlides16-Optimization2.pdf)
    * [Error Bounds and Iterative Refinement](faires-burden/error-bounds-iterative-refinement.pdf)
    * [The Steepest Descent Method](faires-burden/steepest-descent-method.pdf)
* Iterative search, condition numbers
* Steepest descent search direction, nonlinear solvers, Newton, quasi-Newton
    * [Systems of Nonlinear Equations](faires-burden/systems-nonlinear-equations.pdf)
* [Midterm Review](General/352LectureSlides17-MidtermReview.pdf)

## Text Files

All PDFs converted to text using [OCR](https://github.com/ljeng/process-simulation/blob/main/script/ocr.py). Use cases:
* Compatible with the search engine, so it can find search queries. Just confirmed this isn't allowed on the midterm however.
* Find a search query using `command + F`.
* Copy + paste. Useful for code blocks to run in Colab.

### Faires & Burden

* [adaptive-techniques.txt](faires-burden/text/adaptive-techniques.txt)
* [basic-quadrature-rules.txt](faires-burden/text/basic-quadrature-rules.txt)
* [error-bounds-iterative-refinement.txt](faires-burden/text/error-bounds-iterative-refinement.txt)
* [gaussian-elimination.txt](faires-burden/text/gaussian-elimination.txt)
* [introduction-bisection.txt](faires-burden/text/introduction-bisection.txt)
* [introduction-convergence-vectors-eigenvalues-eigenvectors.txt](faires-burden/text/introduction-convergence-vectors-eigenvalues-eigenvectors.txt)
* [introduction-larange-polynomials.txt](faires-burden/text/introduction-larange-polynomials.txt)
* [introduction-taylor-methods.txt](faires-burden/text/introduction-taylor-methods.txt)
* [linear-algebra-matrix-inversion-matrix-factorization-techniques-special-matrices.txt](faires-burden/text/linear-algebra-matrix-inversion-matrix-factorization-techniques-special-matrices.txt)
* [mathematical-preliminaries-error-analysis.txt](faires-burden/text/mathematical-preliminaries-error-analysis.txt)
* [methods-systems-equations.txt](faires-burden/text/methods-systems-equations.txt)
* [newton-method.txt](faires-burden/text/newton-method.txt)
* [numerical-differentiation.txt](faires-burden/text/numerical-differentiation.txt)
* [predictor-corrector-methods.txt](faires-burden/text/predictor-corrector-methods.txt)
* [runge-kutta-methods.txt](faires-burden/text/runge-kutta-methods.txt)
* [spline-interpolation.txt](faires-burden/text/spline-interpolation.txt)
* [steepest-descent-method.txt](faires-burden/text/steepest-descent-method.txt)
* [stiff-differential-equations.txt](faires-burden/text/stiff-differential-equations.txt)
* [systems-nonlinear-equations.txt](faires-burden/text/systems-nonlinear-equations.txt)

### Lecture Slides

Note: The [bonus slide](General/352LectureSlides04.1-bonus_slide_lecture4.png) has *not* been converted because it's a .png so cannot be read by the OCR software.

* [352LectureSlides01-Intro.txt](General/text/352LectureSlides01-Intro.txt)
* [352LectureSlides02-Python.txt](General/text/352LectureSlides02-Python.txt)
* [352LectureSlides03-NumPy.txt](General/text/352LectureSlides03-NumPy.txt)
* [352LectureSlides04-Real-Analysis.txt](General/text/352LectureSlides04-Real-Analysis.txt)
* [352LectureSlides05-BigO.txt](General/text/352LectureSlides05-BigO.txt)
* [352LectureSlides06-Root-Finding.txt](General/text/352LectureSlides06-Root-Finding.txt)
* [352LectureSlides07-Interpolation.txt](General/text/352LectureSlides07-Interpolation.txt)
* [352LectureSlides08-Integration-Differentiation.txt](General/text/352LectureSlides08-Integration-Differentiation.txt)
* [352LectureSlides09-Intro-to-IVPs.txt](General/text/352LectureSlides09-Intro-to-IVPs.txt)
* [352LectureSlides10-IVPs-RK4.txt](General/text/352LectureSlides10-IVPs-RK4.txt)
* [352LectureSlides11-IVP-systems.txt](General/text/352LectureSlides11-IVP-systems.txt)
* [352LectureSlides12-Final-IVPs.txt](General/text/352LectureSlides12-Final-IVPs.txt)
* [352LectureSlides13-Linear-Systems.txt](General/text/352LectureSlides13-Linear-Systems.txt)
* [352LectureSlides14-Linear-Systems2.txt](General/text/352LectureSlides14-Linear-Systems2.txt)
* [352LectureSlides15-Optimization.txt](General/text/352LectureSlides15-Optimization.txt)
* [352LectureSlides16-Optimization2.txt](General/text/352LectureSlides16-Optimization2.txt)
* [352LectureSlides17-MidtermReview.txt](General/text/352LectureSlides17-MidtermReview.txt)
