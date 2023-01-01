#!/usr/bin/env bash

freespace=$(df -h / | awk 'NR==2 {print $4}')

greentext="\033[32;5m"
bold="\033[1m"
normal="\033[0m"

echo -e "$bold System report for $greentext $HOSTNAME$normal"

printf "\tKernel Release:\t%s\n" "$(uname -r)"
printf "\tBash Version:\t%s\n" "$BASH_VERSION"
printf "\tFree Storage:\t%s\n" "$freespace"
printf "\tFiles in pwd:\t%s\n" "$(ls | wc -l) files"
printf "\tGenerated on:\t%s\n" "$(date)"

