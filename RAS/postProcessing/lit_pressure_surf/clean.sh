#!/bin/bash

#goes into every numbered folder and extracts the dat file. Then concatonates into one dat file

cd ../surfaces

rm -r 0

# loops through directories, in the same order as 'ls' output
for d in */; do
echo $d
cd $d

rm -f p_values.dat

cd ..

done

cd ../lit_pressure_surf
