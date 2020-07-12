#!/bin/bash
headCount=0
tailCount=0
count=0
while [ $count -ne 21 ]
do
	coin=$((RANDOM%2))
	if [ $coin -eq 0 ]
	then
		((headCount++))
	else
		((tailCount++))
	fi
	((count++))

done

function checkWinner() {
	headCount=$1
   tailCount=$2
	if [[ $2 -gt $1 ]]
	then
		echo "Number of Heads is: "$headCount
   	echo "Number of Tails is: "$tailCount
		echo "Tails won by" $((tailCount-headCount))
	else
		echo "Number of Heads is: "$headCount
     	echo "Number of Tails is: "$tailCount
		echo "Heads won by" $((headCount-tailCount))
	fi
}

checkWinner $headCount $tailCount

