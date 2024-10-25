#!/bin/sh
#testplot.sh

gnuplot << EOF
set terminal png
set output "testplot.png"
set xlabel "Number of Access"
set ylabel "Requests per second"
set title "Rocky,httpd,RPS with total access count 10-1000"
plot 'test1.dat' with lines title "Rocky httpd,concurrently 10",  'test2.dat' with lines title "Rocky httpd,concurrently 50"
exit
EOF

echo "plot success!"