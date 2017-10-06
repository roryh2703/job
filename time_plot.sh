#!/bin/bash

#set logscale x
set title "Time per iteration"
set ylabel 'Time (s)'
set xlabel 'Iteration'

plot "time_logs/exe_Time_simple" title 'Execution time (simple)' with lines,\
"time_logs/exe_Time_scotch" title 'Execution time (scotch)' with lines



