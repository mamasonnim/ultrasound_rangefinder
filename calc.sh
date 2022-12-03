#!/bin/bash

while read line
do
	#gp2y converter
	res=$(echo "scale=3; 1000/($line*0.1875)*1.1076*61.3899" | bc)
	echo "gp2y"
	echo $res >> results.txt
done < gp2y_data &

while read line
do
	#hcsr04 converter
	ans=$(echo "scale=3; $line / 170;" | bc)
	echo $ans >> results.txt
done < hcsr04_data
