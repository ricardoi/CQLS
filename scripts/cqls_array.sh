#!/bin/bash
#
#$ -cwd
#$ -M email@oregonstate.edu
#$ -m besa # b=beginning, e=end, s=suspended, n=never, a=aborted or suspended
#$ -S /bin/bash
#$ -N program_name
#$ -o $JOB_NAME_$TASK_ID.out
#$ -e $JOB_NAME_$TASK_ID.err
#$ -pe smp 1
#$ -tc 20 # no more than 20 will run at once
#$ -V
#$ -t 1-60:1 # step size of 1

i=$(expr $SGE_TASK_ID - 1)

# read the file list
FILE=( `cat file_path.txt`)
IFS=';' read -a arr <<< "${FILE[$i]}"

script.sh ${arr[0]} .;
