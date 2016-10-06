set term latex
set terminal postscript eps blacktext monochrome  font 'Times-Roman,20'
set output 'throughputvaryStep.eps'
set style data lines
set title "Variation in Throughput" 
set xdata time
fmt="%b-%d-%H:%M:%S"
set timefmt fmt
set yrange [0:15000]
set xrange ["Sep-23-11:15:00":"Sep-23-11:45:00"]
f(x)= x>strptime(fmt, "Sep-23-11:25:00") ? 1000 : x<strptime(fmt, "Sep-23-11:35:00") ? 10000 : 5000
plot f(x)