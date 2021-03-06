#!/usr/local/bin/bash

echo "Welcome to the Sorting Arithmetic Computation program"

read -p "Enter the first value=" a
read -p "Enter the second value=" b
read -p "Enter the third value=" c
declare -A operation;
declare -a array;

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

for (( i=1; i<5; i++ ))
do
array[$i]=${operation[UC$i]}
done
 
for (( i=1; i<4; i++ ))
do
for (( j=i+1; j<5; j++ ))
do
if [[ ${array[i]} -lt ${array[j]} ]]
then
z="${array[i]}"
array[$i]="${array[j]}"
array[$j]="$z";
fi
done
done

echo "Arrays values in descending order="
echo ${array[@]}

for (( i=1; i<4; i++ ))
do
for (( j=i+1; j<5; j++ ))
do
if [[ ${array[i]} -gt ${array[j]} ]]
then
z="${array[i]}"
array[$i]="${array[j]}"
array[$j]="$z";
fi
done
done

echo "Arrays values in ascending order="
echo ${array[@]}

