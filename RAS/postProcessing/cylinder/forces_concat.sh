#!/bin/bash

#goes into every numbered folder and extracts the dat file. Then concatonates into one dat file

# loops through directories, in the same order as 'ls' output
for d in */; do
echo $d
cd $d

cp forces.dat ../forces.dat
cd ..

sed -i -e 1,3d forces.dat          #remove first 3 rows (text)

cat forces.dat >> all.dat

#remove this file now all.dat is full
rm -f forces.dat

done
