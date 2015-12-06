#!/bin/bash

BASE=$(cd $(dirname $0) && pwd)
CONFIG_FILE='config.sh'
source ${BASE}"/"${CONFIG_FILE}

preprocessing ${HOME_DIR}"/.tmux.conf"
ln -s ${BASE_DIR}"/tmux/tmux.conf" ${HOME_DIR}"/.tmux.conf"

