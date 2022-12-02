#!/bin/bash

score=0
while read line; do
  rival=$(echo ${line} | cut -d" " -f1) 
  mine=$(echo ${line} | cut -d" " -f2) 

  case $rival in
    # Piedra
    "A")
      case $mine in
        # PIERDO
        "X")
        score=$((score+3))
          ;;
        # EMPATO
        "Y")
        score=$((score+4))
          ;;
        # GANO
        "Z")
        score=$((score+8))
          ;;
        esac
      ;;
    "B")
      case $mine in
        "X")
        score=$((score+1))
          ;;
        "Y")
        score=$((score+5))
          ;;
        "Z")
        score=$((score+9))
          ;;
        esac
      ;;
    "C")
      case $mine in
        "X")
        score=$((score+2))
          ;;
        "Y")
        score=$((score+6))
          ;;
        "Z")
        score=$((score+7))
          ;;
        esac
      ;;
  esac
done < input
echo ${score}
