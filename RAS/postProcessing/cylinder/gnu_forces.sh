#!/bin/bash

# SCRIPT TO PLOT LIFT AND DRAG



#####	PLOT Drag
gnuplot -persist > /dev/null 2>&1 << EOF
	set title "Drag vs. Time"
	set xlabel "Dimensionless time T (tU/d)"
	set ylabel "Force (N)"

	set autoscale 
	plot	"forces.txt" u 1:3 title 'Drag' with lines,\

EOF


#####	PLOT Lift
gnuplot -persist > /dev/null 2>&1 << EOF
	set title "Lift vs. Time"
	set xlabel "Dimensionless time T (tU/d)"
	set ylabel "Force (N)"

	set autoscale 
	plot	"forces.txt" u 1:2 title 'Lift' with lines,\

EOF


