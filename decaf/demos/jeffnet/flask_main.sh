#!/bin/bash
#SBATCH --job-name=flask_demo
#SBATCH --partition=vision
#SBATCH --cpus-per-task=7
#SBATCH --mem=8000
#SBATCH --nodelist=orange5

export MKL_NUM_THREADS=24
export OMP_NUM_THREADS=24
python flask_main.py \
    --net_file=../../scripts/imagenet.jeffnet.epoch72 \
    --meta_file=../../scripts/imagenet.jeffnet.meta
