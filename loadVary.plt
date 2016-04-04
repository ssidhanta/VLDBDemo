#set title "Staleness and Latency with Changing Workload"
set xlabel " YCSB a  YCSB b   YCSB c   YCSB d  YCSB e  YCSB f  HotSpot " font "Times-Roman,18 left"
#set ylabel "Staleness (milliseconds)" font "Times-Roman,14"
#set key font "Times-Roman,20" 
set ylabel "milliseconds" font "Times-Roman,20"

set auto x 
set auto y 
#set xrange [0:20]
#set yrange [0:350]
set xtics offset 1
set ytics offset -1
#set label 1 "SLA-1: latency 20 staleness 5" at 1,345
#set label 1 "SLA-2: latency 50 staleness 2.5" at 1,343
#set label 1 "SLA-3: latency 100 staleness 1" at 1,343
#set term latex
set terminal postscript eps blacktext monochrome font 'Times-Roman,24'
set output 'loadVary.eps'
plot 'training_data.csv' every 100 using 1:9 title 'Staleness with ONE READ/ANY WRITE'  with linespoints pt 1  pointsize 2,'training_data.csv' every 100 using 1:8 title 'Latency with ONE READ/ANY WRITE' with linespoints pt 2  pointsize 2, 'training_data.csv' every 100 using 1:11 title 'Staleness with QUORUM READ/WRITE' with linespoints pt 3  pointsize 2,'training_data.csv' every 100 using 1:10 title 'Latency with QUORUM READ/WRITE' with linespoints pt 4  pointsize 2, 'training_data.csv' every 100 using 1:13 title 'Staleness with ALL READ/QUORUM WRITE' with linespoints pt 5  pointsize 2,'training_data.csv' every 100 using 1:12 title 'Latency with ALL READ/QUORUM WRITE' with linespoints pt 6  pointsize 2;