#!/bin/bash

BASE_DIR=$(cd $(dirname $0) && pwd)
HOME_DIR=$HOME
DATE=$(date +%Y%m%d_%H%M%S)
TIME_STAMP=$(date +%s)

echo $BASE_DIR
echo $HOME_DIR
echo $DATE
echo $TIME_STAMP
