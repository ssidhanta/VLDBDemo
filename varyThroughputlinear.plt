set term latex
set terminal postscript eps blacktext monochrome  font 'Times-Roman,20'
set output 'throughputvaryLinear.eps'
set style data lines
set title "Variation in Throughput
set xdata time
fmt="%M:%S"
set timefmt fmt
set yrange [0:1500]
set xrange [0:1800]
set autoscale x
set autoscale y
set xlabel "Sep-23-11:15:00							  Sep-23-11:25:00				 		   Sep-23-11:35:00   						 Sep-23-11:45:00" 					 
unset xtics 
f(x)=1000+x*1000;
plot f(x)