#!/bin/bash
#
#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno12/lab6
#SBATCH -J lab6_alumno12
#SBATCH --cpus-per-task=1
#SBATCH --mail-type=NONE
#SBATCH --mail-user=MAIL@um.es
#SBATCH --ntasks-per-node=4
#SBATCH -o salida-avanzado-lab6.sh

module load singularity 

gzip -d zebrafish.1.protein.faa.gz

singularity exec /nas/hdd-0/singularity_images/blast_2.9.0--pl526h3066fca_4.sif makeblastdb -in zebrafish.1.protein.faa -dbtype prot

singularity exec /nas/hdd-0/singularity_images/blast_2.9.0--pl526h3066fca_4.sif blastp -query P04156.fasta -db zebrafish.1.protein.faa -out results-blast.txt

