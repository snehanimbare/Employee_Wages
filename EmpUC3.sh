#!/bin/bash -x

empRatePerHr=20
isPartTime=1
isFullTime=2

var=$((RANDOM%3))
if [[ $var -eq $isFullTime ]]
then
empHrs=8
elif [[ $var -eq $isPartTime ]]
then
empHrs=4
else
empHrs=0
fi
salary=$(($empHrs*$empRatePerHr))
echo "Salary= "$salary
