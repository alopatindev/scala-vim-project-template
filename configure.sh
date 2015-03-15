#!/bin/bash

function cd_project_dir() {
    cd $(dirname "$0")
    echo "current directory is $(pwd)"
}

set -e
cd_project_dir

ln -sf ../../scripts/pre-commit .git/hooks/pre-commit

PROJECT_NAME=$(basename `pwd`)
echo "project name is '${PROJECT_NAME}'"

sbt eclipse
vi -c ":ProjectCreate . -p ${PROJECT_NAME} -n scala -n java" -c ":ProjectOpen" -c ":ProjectBuild" -c ":ProjectTreeToggle"
