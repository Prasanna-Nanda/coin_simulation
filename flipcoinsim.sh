#!/bin/bash

tail=0
head=1
headCount=0
tailCount=0
target=21

while (( $headCount != $target || $tailCount != $target ))
do
	flipCoinResult=$((RANDOM%2))
	if [[ $flipCoinResult == $tail ]]
	then
        	echo "Tail-$flipCoinResult Winner"
		((tailCount++))
	 	if [[ $tailCount == $target ]]
        	then
                	echo "Tail wins reached  $tailCount times"
        		break
        	fi
	elif [[ $flipCoinResult == $head ]]
	then
		echo "Head-$flipCoinResult Winner"
		((headCount++))
		if [[ $headCount == $target ]]
        	then
                	echo "Head wins reached  $headCount times"
        		break
        	fi
	else
		echo "Invalid Result"
	fi
