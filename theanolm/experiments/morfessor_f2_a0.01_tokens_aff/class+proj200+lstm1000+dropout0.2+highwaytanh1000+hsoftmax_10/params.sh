#!/bin/bash -e

ARCHITECTURE="class+proj200+lstm1000+dropout0.2+highwaytanh1000+hsoftmax"
SEQUENCE_LENGTH="40"
BATCH_SIZE="64"
TRAINING_STRATEGY="local-mean"
OPTIMIZATION_METHOD="adagrad"
STOPPING_CRITERION="no-improvement"
VALIDATION_FREQ="2"
PATIENCE="2"
LEARNING_RATE="0.1"
GRADIENT_DECAY_RATE=""
EPSILON=""
MAX_GRADIENT_NORM="5"
#UNK_PENALTY="-5"
IGNORE_UNK="1"
MAX_TOKENS_PER_NODE="62"
BEAM="650"
RECOMBINATION_ORDER="22"
DEBUG=""
#VOCAB_SIZE="200000"
NUM_NOISE_SAMPLES="20"
CLASSES="/wrk/psmit/chars-fin-2017/theanolm/experiments/exchange/n=2000_mf2_0.01_aff/exchange.temp24.classes"
#CLASSES="/wrk/psmit/chars-mgb-2018/theanolm/experiments/exchange/n\=2000_mf2_0.1_aff/exchange.temp24.classes"
#CLASSES="/scratch/work/gangirs1/asru2017/classes/n=2000_morfessor_f2_a0.005_tokens_kie_wma/exchange.classes"
