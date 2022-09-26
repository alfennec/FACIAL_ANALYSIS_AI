#!/bin/bash
#SBATCH --job-name=DF-GAN-V2
#SBATCH --partition=gpu-prodq #partition de test limitée a 2h, changer à gpu-prodq 
#SBATCH --gres=gpu:2
#SBATCH -o %x-%j.out
#SBATCH -e %x-%j.err

module load cuda10.1/toolkit/10.1.243
module load cudnn
export CONDA_ENVS_PATH=/data/$USER/envs
module load anaconda3
source activate df_gan_v1
unset PYTHONPATH
python main.py --cfg cfg/celeba.yml