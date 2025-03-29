#!/bin/bash
# Run in the standard partition (queue)
#SBATCH --partition=teaching
#
# Specify project account
#SBATCH --account=teaching
# No. of tasks required (max. of 16)
#SBATCH --ntasks=2 --nodes=1
#SBATCH --time=01:00:00
#SBATCH --mem=8G
#SBATCH --job-name=CH934_ASSIGNMENT
#SBATCH --output=slurm-%j.out

module purge
module load gaussian/g16

/opt/software/scripts/job_prologue.sh

export GAUSS_SCRDIR=$SLURM_SUBMIT_DIR

g16 Molecule_PENCEN_SP.com

g16 Molecule_TETCEN_SP.com


/opt/software/scripts/job_epilogue.sh
