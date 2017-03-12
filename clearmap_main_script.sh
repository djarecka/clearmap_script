#!/bin/bash
#SBATCH --time=3:00:00
#SBATCH --mem=200GB
#SBATCH --cpus-per-task=6


singularity exec -c -B /om/scratch/:/scratch miniconda_test /opt/conda/bin/python /scratch/Sat/djarecka/alex_files_170222_P4_Npas4/process_template.py
