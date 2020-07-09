#!/bin/bash -x

isPartTime=1
isFullTime=2
MaxHrsInMonth=4
empRatePerHr=20
numWorkingDays=20

totalWorkHours=0
totalWorkingDays=0

declare -A empDailyWage

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

function calculateDailyWage()
{
local workHrs=$workHours
wage=$(($workHrs*$empRatePerHr))
echo $wage
}

while [[ $totalWorkHours -lt $MaxHrsInMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
((totalWorkingDays++))
workHours="$( getWorkingHours $((RANDOM%3)) )"
totalWorkHours=$(($totalWorkHours*$workHours))
empDailyWage[$totalWorkingDays]="$( calculateDailyWage $workHours )"
done

totalSalary="$( calculateDailyWage $totalWageHours )"
echo "Daily Wage = " ${empDailyWage[@]}
echo "Daily Wage = " ${!empDailyWage[@]}
