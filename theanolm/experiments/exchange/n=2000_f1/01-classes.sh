#!/bin/bash -e
#SBATCH --partition batch,coin
#SBATCH --time=1-00
#SBATCH --mem=40G
#SBATCH --cpus-per-task=8

WORK_DIR=/scratch/work/psmit/chars-fin-2017/theanolm
EXPT_SCRIPT_DIR=`pwd`

data_dir=$WORK_DIR/data
declare -a TRAIN_FILES=("${data_dir}/word_f1/kielipankki.train")
DEVEL_FILE="${data_dir}/word_f1/kielipankki.dev"
EVAL_FILE="${data_dir}/word_f1/kielipankki.dev"


source ../../../scripts/run-expt.sh "${0}"
source "${PROJECT_SCRIPT_DIR}/class-functions.sh"

module purge
module load srilm
module load exchange
module load GCC

NUM_THREADS="8"
classes_exchange
