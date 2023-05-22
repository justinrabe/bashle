# /bin/bash

echo "Welcome to Bashle!"
declare -a myArray
mapfile -t myArray < words.txt
rand=$[$RANDOM % ${#myArray[@]}]
ans=${myArray[rand]}

echo $ans
for i in {5..1}
do
	echo "Please enter a 5 letter word. you have $i tries remaining."
	read guess
	for i in $(seq 1 ${#guess}); do
		echo "${guess:i-1:1}"
		for j in $(seq 1 ${#ans}); do
			echo "${ans:j-1:1}"
		done
	done
done
