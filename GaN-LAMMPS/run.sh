#!/bin/bash

for iter in $(seq 1 4); do

  echo -e "Starting iteration #${iter}...\n"

  mpirun -np 10 lmp_mpi -in in.forces -var iter ${iter} | tee out.forces-${iter}

done

echo -e "\nDONE!\n"
