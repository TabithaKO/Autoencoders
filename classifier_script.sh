#!/bin/bash -l

#$ -P cs440

#$ -l gpus=1

# Specify the minimum GPU compute capability
#$ -l gpu_c=6

# Request 6 CPUs
#$ -pe omp 8

# -j y
#$ -o log_classifier.txt
#$ -e err_classifier.txt

module load python3/3.7.9
module load tensorflow/2.3.1
python3 classifier.py
