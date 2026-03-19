set terminal pdfcairo enhanced color
set xlabel "x (mm)"
set ylabel "z (mm)"
set key outside left center

# =============================
# FULL MIDLINE PLOT
# =============================
set output "geom_midline_full.pdf"

plot \
    "deformedGeometricMidline.txt" u (1e3*$1):(1e3*$3) every 3::0 w lp pt 6 ps 1 lc "blue" t "{/Symbol \D}x = 1.26 mm", \
    "hex.hypre.2/deformedGeometricMidline.txt" u (1e3*$1):(1e3*$3) every 3::0 w lp pt 6 ps 0.8 lc "cyan" t "{/Symbol \D}x = 0.63 mm", \
    "hex.hypre.3/deformedGeometricMidline.txt" u (1e3*$1):(1e3*$3) every 3::0 w lp pt 6 ps 0.6 lc "green" t "{/Symbol \D}x = 0.32 mm", \
    "hex.hypre.4/deformedGeometricMidline.txt" u (1e3*$1):(1e3*$3) every 3::0 w lp pt 6 ps 0.4 lc "red" t "{/Symbol \D}x = 0.16 mm"

# =============================
# APEX ZOOM
# =============================
set output "geom_midline_apex.pdf"
set xrange [-2:0]
set yrange [-15:-13]
set xtics 2
set size ratio 1

plot \
    "deformedGeometricMidline.txt" u (1e3*$1):(1e3*$3) w lp pt 6 ps 1 lc "blue" t "{/Symbol \D}x = 1.26 mm", \
    "hex.hypre.2/deformedGeometricMidline.txt" u (1e3*$1):(1e3*$3) w lp pt 6 ps 0.8 lc "cyan" t "{/Symbol \D}x = 0.63 mm", \
    "hex.hypre.3/deformedGeometricMidline.txt" u (1e3*$1):(1e3*$3) w lp pt 6 ps 0.6 lc "green" t "{/Symbol \D}x = 0.32 mm", \
    "hex.hypre.4/deformedGeometricMidline.txt" u (1e3*$1):(1e3*$3) w lp pt 6 ps 0.4 lc "red" t "{/Symbol \D}x = 0.16 mm"

# =============================
# INFLECTION REGION
# =============================
set output "geom_midline_inflection.pdf"
set xrange [-8.75:-8.25]
set yrange [-2:2]
set xtics 0.25
set size ratio 1

plot \
    "deformedGeometricMidline.txt" u (1e3*$1):(1e3*$3) w lp pt 6 ps 1 lc "blue" t "{/Symbol \D}x = 1.26 mm", \
    "hex.hypre.2/deformedGeometricMidline.txt" u (1e3*$1):(1e3*$3) w lp pt 6 ps 0.8 lc "cyan" t "{/Symbol \D}x = 0.63 mm", \
    "hex.hypre.3/deformedGeometricMidline.txt" u (1e3*$1):(1e3*$3) w lp pt 6 ps 0.6 lc "green" t "{/Symbol \D}x = 0.32 mm", \
    "hex.hypre.4/deformedGeometricMidline.txt" u (1e3*$1):(1e3*$3) w lp pt 6 ps 0.4 lc "red" t "{/Symbol \D}x = 0.16 mm"