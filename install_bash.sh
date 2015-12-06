#!/bin/bash

BASE=$(cd $(dirname $0) && pwd)
CONFIG_FILE='config.sh'
source ${BASE}"/"${CONFIG_FILE}

preprocessing ${HOME_DIR}"/.bashrc"
ln -s ${BASE_DIR}"/bash/bashrc" ${HOME_DIR}"/.bashrc"

preprocessing ${HOME_DIR}"/.bash_profile"
ln -s ${BASE_DIR}"/bash/bash_profile" ${HOME_DIR}"/.bash_profile"

