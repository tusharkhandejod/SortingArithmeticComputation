#!/usr/local/bin/bash
read -p "Enter the first value=" a
read -p "Enter the second value=" b
read -p "Enter the third value=" c
declare -A operation;

echo "UC1"
d=$(( $a + ($b*$c)))
echo "a + b * c=" $d
operation[UC1]=$d

echo "UC2"
e=$((($a*$b) + $c ))
echo "a * b + c =" $e
operation[UC2]=$e

echo "UC3"
f=$(( $c + ($a/$b)))
echo "c + a / b =" $f
operation[UC3]=$f

echo "UC4"
g=$(( ($a%$b) + $c ))
echo "a % b + c =" $g
operation[UC4]=$g



