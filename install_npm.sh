#!/bin/bash

BASE=$(cd $(dirname $0) && pwd)
CONFIG_FILE='config.sh'
source ${BASE}"/"${CONFIG_FILE}

preprocessing ${HOME_DIR}"/.npmrc"
ln -s ${BASE_DIR}"/npm/npmrc" ${HOME_DIR}"/.npmrc"

