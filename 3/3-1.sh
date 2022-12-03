#!/bin/bash

while read line; do
  first=${line:0:${#line}/2}
  second=${line:${#line}/2}
  for (( i=0; i<${#first}; i++ )); do
    for (( j=0; j<${#second}; j++ )); do
      if [[ ${first:$i:1} == ${second:$j:1} ]]; then
        echo ${first:$i:1}

	break 2
      fi
    done
  done
done < input-small
