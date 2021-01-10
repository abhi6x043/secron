#!/bin/bash

#coded in bash
#written by Abhijith S (abhi6x043)

#Assigning variables for accepting jobs and setting time interval in seconds
#sec variable for supplying first input to determine time interval
#job variable for supplying second input to execute the job to be done

sec=$1
job=$2

#if elif statements are used to define the each specific tasks
#for loop is used to execute them for the desire number of times

if [ $sec -eq 30 ]
then
	for i in {1..2};
	do
		sleep $sec;
		$job
	done

elif [ $sec -eq 20 ]
then
	for i in {1..3};
	do
		sleep $sec;
		$job
	done

elif [ $sec -eq 15 ]
then
	for i in {1..4};
	do
		sleep $sec;
		$job
	done


elif [ $sec -eq 10 ]
then
	for i in {1..6};
	do
		sleep $sec;
		$job
	done

elif [ $sec -eq 5 ]
then
	for i in {1..12};
	do
		sleep $sec;
		$job
	done

else
	echo "Enter a valid number among the following [5,10,15,20,30]"
	echo "Make sure that you entered the second input option in qoutes 'command' "
	echo "Please verify your syntax is correct"
	echo "See the Examples given Below"
	echo "secron 10 'ping -c4 127.0.0.1'  //for running a ping job in a 10 second time interval"
	echo ""
	echo "secron 30 'rsync -avz /home/testing/ /test/'  //this will set an rsync job for testing in every 30 seconds"
	echo ""
	echo "* * * * * secron 20 'echo HELLO' >> hello.txt 2>&1   //adding this to crontab will set a cronjob to echo HELLO to hello.txt file in every 20 seconds"

fi
