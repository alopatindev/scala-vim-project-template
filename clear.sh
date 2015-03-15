#!/bin/bash

function cd_project_dir() {
    cd $(dirname "$0")
    echo "current directory is $(pwd)"
}

set -e
cd_project_dir

PROJECT_NAME=$(basename `pwd`)
echo "project name is '${PROJECT_NAME}'"

vim -c ":ProjectClose" -c ":ProjectDelete ${PROJECT_NAME}" -c ":q"
rm -rfv target project/target project/project .classpath bin .project
