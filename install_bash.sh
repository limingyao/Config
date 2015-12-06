#!/bin/bash

BASE=$(cd $(dirname $0) && pwd)
source ${BASE}"/config.sh"

echo ${BASE_DIR}
echo ${HOME_DIR}
echo ${DATE}
echo ${TIME_STAMP}

echo ${BASH_DIR}
echo ${NPM_DIR}
echo ${TMUX_DIR}
echo ${VIM_DIR}
echo ${ZSH_DIR}

