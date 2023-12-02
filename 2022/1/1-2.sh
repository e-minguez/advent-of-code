#!/bin/bash

for i in $(while read line; do
  if [[ ${line} != "" ]]; then
    total=$((total + line))
  else
    echo ${total}
    total=0
  fi
done < input  | sort -n | tail -n3); do
  top3=$((top3 + i))
done

echo ${top3}
