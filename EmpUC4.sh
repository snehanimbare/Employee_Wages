#!/bin/bash -x
empRatePerHr=20
isFullTime=2
isPartTime=1

var=$((RANDOM%3))

case "$var" in

$isFullTime)
	empHrs=8
	;;
$isPartTime)
	empHrs=4
	;;
*)
empHrs=0
;;
esac
salary=$(($empHrs*$empRatePerHr))
