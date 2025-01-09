#!/bin/bash
#SBATCH -J seq-pacioli-alumno15
#SBATCH --chdir=/home/alumno15
#SBATCH -p hpc-bio-pacioli
#SBATCH --cpus-per-task=2
#SBATCH --ntasks-per-node=4

file=(*.fastq)
for f in "${file[@]}"; do
echo "cutting file $f"
./file-cut.sh $f &
done
