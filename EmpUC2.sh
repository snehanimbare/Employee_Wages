#!/bin/bash -x

empRatePerHr=20
empHrs=8

var=$((RANDOM%2))
if [[ $var -eq 1 ]]
then
salary=$(($empRatePerHr*$empHrs))
else
salary=0
fi
