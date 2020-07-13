echo "Welcome to Employee Wage Computation Program"

#!/bin/bash -x

empRatePerHr=20
isPartTime=1
isFullTime=2

var=$(( RANDOM % 3 ))
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
echo salary=$(($empHrs*$empRatePerHr))
