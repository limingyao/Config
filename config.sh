#!/bin/bash

BASE_DIR=$(cd $(dirname $0) && pwd)
HOME_DIR=$HOME
DATE=$(date +%Y%m%d_%H%M%S)
TIME_STAMP=$(date +%s)


function is_link()
{
	local file_path=$1
	local tmp_string=$(ls -l ${file_path})
	local symbol=${tmp_string:0:1}
	if [ $symbol == 'l' ];then
		return 1
	fi
	return 0
}

function preprocessing()
{
	local file_path=$1
	if [ -e ${file_path} ];then
		is_link ${file_path}
		if [ $? -eq 1 ];then
			rm ${file_path}
		else
			mv ${file_path} ${file_path}"."${TIME_STAMP}
		fi
	fi
}

