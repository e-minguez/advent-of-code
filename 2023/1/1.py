#!/usr/bin/env python3

total=0
with open("input", "r") as file:
    for line in file:
        for c in line:
            if c.isdigit():
                _line = c
                break
        for c in reversed(line):
            if c.isdigit():
                _line += c
                break
        print(_line)
        total += int(_line)


print(total)