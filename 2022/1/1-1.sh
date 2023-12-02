#!/bin/bash

while read line; do
  if [[ ${line} != "" ]]; then
    total=$((total + line))
  else
    echo ${total}
    total=0
  fi
done < input  | sort -n | tail -n1
