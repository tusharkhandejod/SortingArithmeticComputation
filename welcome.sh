#!/bin/bash
echo "Welcome to the Sorting Arithmetic Computation program"

read -p "Enter the first value=" a
read -p "Enter the second value=" b
read -p "Enter the third value=" c

d=$(( $a + ($b*$c)))
echo "a + b * c=" $d

e=$((($a*$b) + $c ))
echo "a * b + c =" $e
