#!/bin/sh

#SBATCH --time=00:01:00
#SBATCH --ntasks=2

/julia/bin/julia --project=/ClusterManagers /test/slurm/simple_test.jl