#!/bin/bash

rm -rf time_logs
mkdir time_logs

cat log_simple | grep 'ExecutionTime' | cut -d' ' -f3 > time_logs/exe_Time_simple
cat log_simple | grep 'ClockTime' | cut -d' ' -f8 > time_logs/clock_Time_simple

cat log_scotch | grep 'ExecutionTime' | cut -d' ' -f3 > time_logs/exe_Time_scotch
cat log_scotch | grep 'ClockTime' | cut -d' ' -f8 > time_logs/clock_Time_scotch

gnuplot ./time_plot.sh -

