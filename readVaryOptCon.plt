#set title "Staleness and Latency with Changing Workload"
set xlabel "ReadProportion					0.1								   0.3				 		   0.5   							 0.7 					 0.9 								 " font "Times-Roman,18 left"
#set ylabel "Staleness (milliseconds)" font "Times-Roman,14"
set key font "Times-Roman,20" 
set ylabel "Latency in milliseconds" font "Times-Roman,20"
set y2label "Staleness in milliseconds" font "Times-Roman,20"

set auto x 
#set auto y 
#set xrange [0:20]
set yrange [0:200]

#set xtics offset 1
unset xtics
#set ytics offset -1
#set label 1 "SLA-1: latency 20 staleness 5" at 1,345
#set label 1 "SLA-2: latency 50 staleness 2.5" at 1,343
#set label 1 "SLA-3: latency 100 staleness 1" at 1,343
set term latex
set terminal postscript eps blacktext monochrome  font 'Times-Roman,20'
set output 'readVaryOptCon.eps'
set y2range [0:15]
set y2tics nomirror
set ytics nomirror
#set autoscale y2
plot 'trainingdataout.csv' every 5 using 1:3 title 'Staleness with OptCon' with linespoints pointsize 2 axes x1y2,'trainingdataout.csv' every 5 using 1:2 title 'Latency with OptCon' with linespoints pointtype 5 pointsize 2 axes x1y1; 