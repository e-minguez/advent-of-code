#!/bin/bash

score=0
while read line; do
  echo ${line}
  rival=$(echo ${line} | cut -d" " -f1) 
  mine=$(echo ${line} | cut -d" " -f2) 
  case $rival in
    # Piedra
    "A")
      case $mine in
        # Piedra
        "X")
        score=$((score+4))
          ;;
        # Papel
        "Y")
        score=$((score+8))
          ;;
        # Tijeras
        "Z")
        score=$((score+3))
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
        score=$((score+7))
          ;;
        "Y")
        score=$((score+2))
          ;;
        "Z")
        score=$((score+6))
          ;;
        esac
      ;;
  esac
done < input
echo ${score}
