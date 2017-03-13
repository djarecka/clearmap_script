#!/bin/bash
#SBATCH --time=3:00:00
#SBATCH --mem=200GB
#SBATCH --cpus-per-task=6

data_directory='/om/scratch/Sat/djarecka/alex_files_170222_P4_Npas4/'
output_directory='/om/scratch/Sat/djarecka/alex_files_170222_P4_Npas4/clearmap_test_output/'
atlas_directory='/om/scratch/Sat/djarecka/alex_files_170222_P4_Npas4/mouse_brain_files/'
scripts_directory="/home/djarecka/clearmap_script/" 

singularity exec -c -B "$data_directory":/clearmap_basedir/data/ -B "$output_directory":/clearmap_basedir/output/ -B "$atlas_directory":/clearmap_basedir/atlas/ -B "$scripts_directory":/clearmap_basedir/scripts/ /om/scratch/Mon/djarecka/images/miniconda_test_clearmap /opt/conda/bin/python /clearmap_basedir/scripts/process_template.py
