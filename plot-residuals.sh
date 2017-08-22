#!/bin/bash

foamLog log >/dev/null

gnuplot -persist > /dev/null 2>&1 << EOF
        set logscale y
        set title "Residual vs. Iteration"
        set xlabel "Time (s)"
        set ylabel "Residual"
        plot "logs/p_0" with lines,\
                "logs/Ux_0" with lines,\
		"logs/Uy_0" with lines
EOF


