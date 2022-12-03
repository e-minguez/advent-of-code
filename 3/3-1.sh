#!/bin/bash

helper=$(echo -n {a..z} | tr -d ' '; echo {A..Z} | tr -d ' ')

score=0

while read line; do
  first=${line:0:${#line}/2}
  second=${line:${#line}/2}
  for (( i=0; i<${#first}; i++ )); do
    for (( j=0; j<${#second}; j++ )); do
      if [[ ${first:$i:1} == ${second:$j:1} ]]; then
	character=$(echo ${first:$i:1})
	echo ${character}
        for (( z=0; z<${#helper}; z++ )); do
          if [[ ${character} == ${helper:$z:1} ]]; then
		  score=$((score+${z}+1))
	  fi
        done
	break 2
      fi
    done
  done
done < input

echo ${score}
