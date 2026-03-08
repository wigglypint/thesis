#!/bin/bash
#
#SBATCH --job-name=zoe_jupyter     # Job name for tracking
#SBATCH --partition=tiger      # Partition you wish to use
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=32      # Number of CPU threads used by your job
#SBATCH --mem-per-cpu=3000     # Memory needed per thread (i.e. 3000MB * 6 threads = 60GB)
#SBATCH --time=2-00:00:00        # Job time limit set to 12 hours
#
#SBATCH --output=jupyter.log
#SBATCH --error=jupyter.err
#SBATCH --mail-type=BEGIN # Get email when your allocation starts

source /etc/profile.d/modules.sh
source /dcs/23/u2200504/thesis/envthesis/bin/activate

# module load python-ml
cd # You might want to use the cd command here to change the working directory that jupyter notebook will use
jupyter notebook --ip=0.0.0.0 --port=11804 --no-browser
