#
reset

# set line style
set style line 1 lt 1 lw 5 pt 1 ps 1 lc rgb 'black'
set style line 2 lt 1 lw 2 pt 2 ps 1 lc rgb 'green'
set style line 3 lt 1 lw 2 pt 6 ps 1 lc rgb 'blue'
set style line 4 lt 1 lw 2 pt 8 ps 1 lc rgb 'red'
set style line 5 lt 1 lw 3 pt 6 ps 1 lc rgb 'purple'
set style line 6 lt 1 lw 2 pt 10 ps 1 lc rgb 'orange'

# set terminal esplatex
set terminal epslatex size 5,4 standalone color 10
set key Left reverse nobox
# output density
set output 'Case-xx-SOD-rho.tex'
set xlabel '$x$'
set ylabel "\\rotatebox{-90}{$\\rho$}"
set format '$%g$'
set border 3
set tics nomirror
set yrange [*:*]  noreverse
set xrange [-0.5:0.5]
set xtics(-0.5,-0.25,0,0.25,0.5)
set key left top 
plot 'Sod_X_Exact.dat'                 using 1:2  with line  ls 1  title "Exact",\
     'Sod_X_Numerical-FirstOrder.dat'  using 1:2  with line  ls 5  title "First order",\
     'Sod_X_Numerical-MUSCL.dat'       using 1:2  with line  ls 3  title "MUSCL",\
     'Sod_X_Numerical-WENO3.dat'       using 1:2  with line  ls 2  title "WENO 3",\
     'Sod_X_Numerical-WENO5.dat'       using 1:2  with line  ls 4  title "WENO 5"



# output u
set output 'Case-xx-SOD-u.tex'
set xlabel '$x$'
set ylabel "\\rotatebox{-90}{$u$}"
set format '$%g$'
set border 3
set tics nomirror
set yrange [*:*]  noreverse
set xrange [-0.5:0.5]
set xtics(-0.5,-0.25,0,0.25,0.5)
#set ytics(0,0.25,0.5,0.75,1,1.25,1.5)
set key left top 
plot 'Sod_X_Exact.dat'                 using 1:3  with line  ls 1  title "Exact",\
     'Sod_X_Numerical-FirstOrder.dat'  using 1:3  with line  ls 5  title "First order",\
     'Sod_X_Numerical-MUSCL.dat'       using 1:3  with line  ls 3  title "MUSCL",\
     'Sod_X_Numerical-WENO3.dat'       using 1:3  with line  ls 2  title "WENO 3",\
     'Sod_X_Numerical-WENO5.dat'       using 1:3  with line  ls 4  title "WENO 5"

# output p
set output 'Case-xx-SOD-p.tex'
set xlabel '$x$'
set ylabel "\\rotatebox{-90}{$p$}"
set format '$%g$'
set border 3
set tics nomirror
set yrange [*:*]  noreverse
set xrange [-0.5:0.5]
set xtics(-0.5,-0.25,0,0.25,0.5)
set key right top 
plot 'Sod_X_Exact.dat'                 using 1:4  with line  ls 1  title "Exact",\
     'Sod_X_Numerical-FirstOrder.dat'  using 1:4  with line  ls 5  title "First order",\
     'Sod_X_Numerical-MUSCL.dat'       using 1:4  with line  ls 3  title "MUSCL",\
     'Sod_X_Numerical-WENO3.dat'       using 1:4  with line  ls 2  title "WENO 3",\
     'Sod_X_Numerical-WENO5.dat'       using 1:4  with line  ls 4  title "WENO 5"

# output e
set output 'Case-xx-SOD-e.tex'
set xlabel '$x$'
set ylabel "\\rotatebox{-90}{$e$}"
set format '$%g$'
set border 3
set tics nomirror
set yrange [*:*]  noreverse
set xrange [-0.5:0.5]
set xtics(-0.5,-0.25,0,0.25,0.5)
#set ytics(1.8,2.1,2.4,2.7,3.0,3.3,3.6)
set key left top 
plot 'Sod_X_Exact.dat'                 using 1:5  with line  ls 1  title "Exact",\
     'Sod_X_Numerical-FirstOrder.dat'  using 1:5  with line  ls 5  title "First order",\
     'Sod_X_Numerical-MUSCL.dat'       using 1:5  with line  ls 3  title "MUSCL",\
     'Sod_X_Numerical-WENO3.dat'       using 1:5  with line  ls 2  title "WENO 3",\
     'Sod_X_Numerical-WENO5.dat'       using 1:5  with line  ls 4  title "WENO 5"