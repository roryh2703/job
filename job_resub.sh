#!/bin/bash

#    Run in current working directory and use current environment
#$ -cwd -V

#    Send email at job start and end
#$ -m be
#$ -M scrh@leeds.ac.uk

#    Set time 
#$ -l h_rt=10:00:00       # time needed

#    How many nodes, how many processors per node (16 cores per 1 node)
#$ -l nodes=3,ppn=24 

module switch intel/17.0.1 gnu/6.3.0
module add openfoam/4.1.0
source $FOAM_SRC_FILE

cd LES
mpirun -np 72 pimpleFoam -parallel >> log

