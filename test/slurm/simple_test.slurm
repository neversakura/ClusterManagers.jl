#!/bin/sh

#SBATCH -D /ClusterManagers/test/slurm
#SBATCH --time=00:10:00
#SBATCH --ntasks=2

/julia/bin/julia --project=/ClusterManagers simple_test.jl