#!/bin/bash

BASE=$(cd $(dirname $0) && pwd)
CONFIG_FILE='config.sh'
source ${BASE}"/"${CONFIG_FILE}

preprocessing ${HOME_DIR}"/.zshrc"
ln -s ${BASE_DIR}"/zsh/zshrc" ${HOME_DIR}"/.zshrc"

