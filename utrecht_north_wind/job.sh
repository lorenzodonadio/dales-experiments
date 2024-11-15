#!/bin/sh

#SBATCH --job-name=utrechtsmall_lorenzo
#SBATCH --partition=compute-p2
#SBATCH --account=innovation
#SBATCH --time=16:00:00
#SBATCH --ntasks=16
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=2G
#SBATCH --output=%j.out
#SBATCH --error=%j.err

# Experiment new module set by Fredrik Jansson (see https://github.com/dalesteam/dales/wiki/Installation-on-DelftBlue)

module load 2023r1-gcc11
module load openmpi/4.1.4
module load cmake/3.24.3
module load netcdf-fortran/4.6.0
module load fftw/3.3.10

export SYST=gnu-fast

srun ./dales4.4 namoptions.001