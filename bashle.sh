# /bin/bash

echo "Welcome to Bashle!"
for i in {5..1}
do
	echo "Please enter a 5 letter word. you have $i tries remaining."
	read guess
	echo $guess
done
