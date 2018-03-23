#!/bin/bash

# usage: ./script.sh <executable> <directory with crashing input data>
for crashing_input in ${2}/*; do
    [ -e "$crashing_input" ] || continue
    echo -e "\e[32m\e[1m[trying]\e[0m ${1} $crashing_input\n"
    ${1} $crashing_input
    echo -e "\n"
done