#!/bin/bash

#goes into every numbered folder and extracts the dat file. Then concatonates into one dat file
./clean.sh

cd ../surfaces
rm -f all_p.dat
rm -f p_position.dat

cd 30
cp p_CYLINDERWALL.vtk p_position.dat
sed -i -e 1,5d -e 1516,2430d p_position.dat          #remove rows (and last 2 rows of position)
cp p_position.dat ../../lit_pressure_surf/p_position.dat
rm -f p_position.dat
cd ..

# loops through directories, in the same order as 'ls' output
for d in */; do
echo $d
cd $d

cp p_CYLINDERWALL.vtk p_values.dat
sed -i -e 1,2278d p_values.dat          #remove rows (text)
sed -i -e 152d p_values.dat          #remove last row of two values

cp p_values.dat ../../lit_pressure_surf/p_values.dat

cd ../../lit_pressure_surf

cat p_values.dat >> all_p.dat

#remove this file now all.dat is full
rm -f p_values.dat

cd ../surfaces

done
