#!/bin/bash

helper=$(echo -n {a..z} | tr -d ' '; echo {A..Z} | tr -d ' ')

score=0

while read lineone; read linetwo; read linethree; do
  for (( i=0; i<${#lineone}; i++ )); do
    for (( j=0; j<${#linetwo}; j++ )); do
      for (( k=0; k<${#linethree}; k++ )); do
        if [[ ${lineone:$i:1} == ${linetwo:$j:1} ]] && [[ ${linetwo:$j:1} == ${linethree:$k:1 } ]]; then
	  character=$(echo ${lineone:$i:1})
	  #echo ${character}
          for (( z=0; z<${#helper}; z++ )); do
            if [[ ${character} == ${helper:$z:1} ]]; then
		  score=$((score+${z}+1))
	    fi
          done
	break 3
      fi
done
    done
  done
done < input

echo ${score}
