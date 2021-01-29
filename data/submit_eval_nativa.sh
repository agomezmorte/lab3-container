#!/bin/bash
#
#SBATCH -p hpc-bio-pacioli 
#SBATCH --chdir=/home/alumno05/lab3-container/data 
#SBATHC J TEST 
#SBATCH --cpus-per-task=1 
#SBATCH --mail-type=END
#SBATHC --mail-user=antoniojose.gomezm@um.es

echo "Tiempo de ejecución del programa con longitud de 13 k-mers de C++"
time ./k-mer13 
echo "Tiempo de ejecución del programa con longitud de 14 k-mers de C++"
time ./k-mer14
echo "Tiempo de ejecución del programa con longitud de 13 k-mers de python"
time python k-mer13.py
echo "Tiempo de ejecucion del programa con longitud de 14 k-mers de python"
time python k-mer14.py
