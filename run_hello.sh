#!/bin/bash

set -ev
USAGE="bash $0 [NAME]"
DATE=`date +%Y%m%d-%H%M`

NAME=$1
PARAM_FILE="params/${NAME}.yaml"
LOG_FILE="logs/${NAME}_${DATE}.log"

echo "### bash $0 $@" > ${LOG_FILE}
echo "|--> START: ${DATE}"

python hello.py --param_file ${PARAM_FILE} | tee -a ${LOG_FILE}

DATE=`date +%Y%m%d-%H%M`
echo "|--> END: ${DATE}"
