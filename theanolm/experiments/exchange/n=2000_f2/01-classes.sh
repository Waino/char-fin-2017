#!/bin/bash -e
#SBATCH --partition batch,coin
#SBATCH --time=1-00
#SBATCH --mem=40G
#SBATCH --cpus-per-task=8

WORK_DIR=/scratch/work/psmit/chars-mgb-2018/theanolm
EXPT_SCRIPT_DIR=`pwd`

data_dir=$WORK_DIR/data
declare -a TRAIN_FILES=("${data_dir}/word_f2/text.train")
DEVEL_FILE="${data_dir}/word_f2/text.dev"
EVAL_FILE="${data_dir}/word_f2/text.dev"


source ../../../scripts/run-expt.sh "${0}"
source "${PROJECT_SCRIPT_DIR}/class-functions.sh"

module purge
module load srilm
module load exchange
module load GCC

NUM_THREADS="8"
classes_exchange
