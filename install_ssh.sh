#!/bin/bash

BASE=$(cd $(dirname $0) && pwd)
CONFIG_FILE='config.sh'
source ${BASE}"/"${CONFIG_FILE}

preprocessing ${HOME_DIR}"/.ssh/config"
ln -s ${BASE_DIR}"/ssh/config" ${HOME_DIR}"/.ssh/config"

