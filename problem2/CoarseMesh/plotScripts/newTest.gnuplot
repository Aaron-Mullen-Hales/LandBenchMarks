set terminal pdfcairo enhanced color
set output "geom_midline_left_exact_check.pdf"

set xlabel "x (mm)"
set ylabel "z (mm)"
set xrange [-10:10]
set yrange [-14:4]
set key top right

plot \
    "deformedGeometricMidline.txt" \
    using (1e3*$1):(1e3*$3) \
    with points pt 6 ps 0.6 lc rgb "gray" title "all points", \
    "deformedGeometricMidline.txt" \
    using (($1 <= 0.0) ? (1e3*$1) : 1/0):(1e3*$3) \
    with points pt 6 ps 1 lc "blue" title "x <= 0 only"