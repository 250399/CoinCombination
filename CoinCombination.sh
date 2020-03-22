#!/bin/bash


read -p"ENTER NO OF FLIP" flip
declare -A dic
dic[H]=0
dic[T]=0
for ((i=0;i<$flip;i++))
do
	r=$((RANDOM%2))
	if [ $r -eq 0 ]
	then
		val=${dic[H]}
		dic[H]=$((val+1))
	else
		val=${dic[T]}
		dic[T]=$((val+1))
	fi
done
val=${dic[H]}
echo "Percent of heads is :"  
echo "scale=2;$val/$flip*100"|bc 
val=${dic[T]}
echo "Percent of tails is :" 
echo "scale=2;$val/$flip*100"|bc
