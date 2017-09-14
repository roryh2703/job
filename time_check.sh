#!/bin/bash

rm -rf time_logs
mkdir time_logs

cat log | grep 'ExecutionTime' | cut -d' ' -f3 > time_logs/exe_Time
cat log | grep 'ClockTime' | cut -d' ' -f8 > time_logs/clock_Time

gnuplot ./time_plot.sh -

