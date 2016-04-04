#set title "Staleness and Latency with Changing Workload"
set xlabel " YCSB a  YCSB b   YCSB c   YCSB d  YCSB e  YCSB f  HotSpot " font "Times-Roman,18 left"
#set ylabel "Staleness (milliseconds)" font "Times-Roman,14"
set key font "Times-Roman,20" 
set ylabel "Latency in milliseconds" font "Times-Roman,20"
#set y2label "Staleness in milliseconds" font "Times-Roman,20"

set auto x 
#set auto y 
#set xrange [0:20]
set yrange [0:200]
#set xtics offset 1
set ytics offset -1
#set label 1 "SLA-1: latency 20 staleness 5" at 1,345
#set label 1 "SLA-2: latency 50 staleness 2.5" at 1,343
#set label 1 "SLA-3: latency 100 staleness 1" at 1,343
set term latex
set terminal postscript eps blacktext monochrome  font 'Times-Roman,20'
set output 'readVary1.eps'
#set y2range [0:15]
#set y2tics nomirror
#set ytics nomirror
unset xtics
plot 'trainingdataout.csv' every 5 using 1:4 title 'Latency with ALL READ/ALL WRITE' with linespoints pointtype 7  pointsize 2;
#plot 'trainingdataout.csv' every 5 using 1:5 title 'Staleness with ALL READ/ALL WRITE' with linespoints pointsize 2 axes xy,'trainingdataout.csv' every 5 using 1:4 title 'Latency with ALL READ/ALL WRITE' with linespoints pointtype 7  pointsize 2 axes xy; 