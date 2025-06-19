#!/bin/bash
#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno07/
#SBATCH -J cut_fastq
#SBATCH -n 4
#SBATCH -t 00:10:00
#SBATCH -o output_cut_%j.log
#SBATCH -e error_cut_%j.log

echo "Iniciando trabajo en $(hostname) a las $(date)"

bash file-cut.sh

echo "Trabajo finalizado en $(date)"

