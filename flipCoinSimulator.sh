#!/bin/bash
headCount=0
tailCount=0
count=0
while [ $count ]
do
	coin=$((RANDOM%2))
	if [ $coin -eq 0 ]
	then
		((headCount++))
	else
		((tailCount++))
	fi
	((count++))

	if [[ (headCount -eq 21) || (tailCount -eq 21) ]]
	then
		break
	else
		continue
	fi
done

function checkWinner() {
	headCount=$1
   tailCount=$2
	if [[ $tailCount -gt $headCount ]]
	then
		echo "Number of Heads is: "$headCount
   	echo "Number of Tails is: "$tailCount
		echo "Tails won by" $((tailCount-headCount))
	elif [[ $tailCount -eq $headCount ]]
	then
		echo "Number of Heads is: "$headCount
      echo "Number of Tails is: "$tailCount
		echo "Its tie Lets try one more time"
	else
		echo "Number of Heads is: "$headCount
     	echo "Number of Tails is: "$tailCount
		echo "Heads won by" $((headCount-tailCount))
	fi
}

checkWinner $headCount $tailCount
