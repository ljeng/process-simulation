faires_burden="faires/burden/faires-burden.pdf"
output_folder="../faires-burden"
mkdir -p "$output_folder"
ranges=(
    "17-45 mathematical-preliminaries-error-analysis.pdf"
    "49-54 introduction-bisection.pdf"
    "60-67 newton-method.pdf"
    "79-91 introduction-larange-polynomials.pdf"
    "103-115 spline-interpolation.pdf"
    "123-131 basic-quadrature-rules.pdf"
    "179-188 numerical-differentiation.pdf"
    "189-199 introduction-taylor-methods.pdf"
    "199-207 runge-kutta-methods.pdf"
    "207-214 predictor-corrector-methods.pdf"
    "220-230 adaptive-techniques.pdf"
    "238-243 stiff-differential-equations.pdf"
    "245-256 gaussian-elimination.pdf"
    "263-291 linear-algebra-matrix-inversion-matrix-factorization-techniques-special-matrices.pdf"
    "293-308 introduction-convergence-vectors-eigenvalues-eigenvectors.pdf"
    "318-325 error-bounds-iterative-refinement.pdf"
    "429-448 systems-nonlinear-equations.pdf"
    "443-448 steepest-descent-method.pdf"
)
for range in "${ranges[@]}"; do
    start=$(echo "$range" | cut -d'-' -f1)
    end=$(echo "$range" | cut -d'-' -f2)
    output=$(echo "$range" | cut -d' ' -f2)
    pdftk "$faires_burden" cat "$start"-"$end" output "$output_folder/$output"
done