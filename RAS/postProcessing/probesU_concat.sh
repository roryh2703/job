#!/bin/bash

#goes into every numbered folder and extracts the dat file. Then concatonates into one dat file

cd probesU

# loops through directories, in the same order as 'ls' output
for d in */; do

echo $d

cd $d

#alter the file
cp U temp1                  #keep orig file U
sed -i -e 1,102d temp1                     #delete the probe text (1 probes)
sed 's/(//g' temp1 > temp2                  #remove '('
rm -r temp1
sed 's/)//g' temp2 > temp3              #remove ')'
rm -r temp2
cp temp3 ../U.dat
rm -r temp3
cd ..
cat U.dat >> Uall.dat 			#save into existing file

#remove this file now Uall.dat is full
rm -f U.dat

done
