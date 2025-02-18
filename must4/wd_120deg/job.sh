#!/bin/sh

#SBATCH --job-name=120deg
#SBATCH --partition=compute-p2
#SBATCH --account=innovation
#SBATCH --time=16:00:00
#SBATCH --ntasks=32
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=3G
#SBATCH --output=%j.out
#SBATCH --error=%j.err

# Experiment new module set by Fredrik Jansson (see https://github.com/dalesteam/dales/wiki/Installation-on-DelftBlue)

module load 2024r1
module load openmpi/4.1.6
module load cmake/3.27.7
module load netcdf-fortran/4.6.1
module load fftw/3.3.10_openmp_True

export SYST=gnu-fast

srun ./dales4.4 namoptions.001