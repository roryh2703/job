#!/bin/bash

#set logscale x
set title "Time per iteration"
set ylabel 'Time (s)'
set xlabel 'Iteration'

plot "time_logs/exe_Time" title 'Execution time' with lines,\
"time_logs/clock_Time" title 'Clock time' with lines



