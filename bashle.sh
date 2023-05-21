# /bin/bash

echo "Welcome to Bashle!"
filename=words.txt
declare -a myArray
mapfile -t myArray < filename
for i in {5..1}
do
	echo "Please enter a 5 letter word. you have $i tries remaining."
	read guess
	echo $guess
done
