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
	echo $guess
done
