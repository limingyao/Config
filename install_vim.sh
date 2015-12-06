#!/bin/bash

BASE=$(cd $(dirname $0) && pwd)
CONFIG_FILE='config.sh'
source ${BASE}"/"${CONFIG_FILE}

preprocessing ${HOME_DIR}"/.vim"
ln -s ${BASE_DIR}"/vim/" ${HOME_DIR}"/.vim"

