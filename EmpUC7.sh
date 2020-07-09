#!/bin/bash -x

isPartTime=1
isFullTime=2
MaxHrsInMonth=100
empRatePerHr=20
numWorkingDays=20

totalWorkHours=1
totalWorkingDays=0

function getWorkingHours()
{
	case $1 in
		$isFullTime)
			workHours=8
			;;
		$isPartTime)
			workHours=4
			;;
		*)
			workHours=0
				;;
		esac
	echo $workHours
}

while [[ $totalWorkHours -lt $MaxHrsInMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
((totalWorkingDays++))
workHours="$( getWorkingHours $((RANDOM%3)) )"
totalWorkHours=$(($totalWorkHours*$workHours))
done

totalSalary=$(($totalWorkHours*$empRatePerHr))
echo "Total Salary = " $totalSalary
