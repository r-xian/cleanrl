#!/bin/bash
#SBATCH --job-name=dqn

#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task 4

#SBATCH --partition=a100
#SBATCH --gres=gpu:1

#SBATCH --mail-type=All
#SBATCH --mail-user=s4642506@uqconnect.edu.au

#SBATCH --time=0-48:00:00

#SBATCH -o dqn.out

#conda activate
conda activate atari

#run python script
python cleanrl/dqn.py \
    --seed 1 \
    --env_id BreakoutNoFrameskip-v4 \
    --track \
    --capture_video \

# MsPacmanNoFrameskip-v4
# BreakoutNoFrameskip-v4
# SpaceInvadersNoFrameskip-v4
# SeaquestNoFrameskip-v4
# PongNoFrameskip-v4
# BeamRiderNoFrameskip-v4
# EnduroNoFrameskip-v4
# CrazyClimberNoFrameskip-v4