echo "Welcome to Employee Wage Computation Program"

#!/bin/bash -x

empRatePerHr=20
isPartTime=1
isFullTime=2
totalSalary=0
numWorkingDays=20

totalEmpHrs=0
totalWirkingDays=0

while [[ $totalEmpHrs -lt $MaxHrsInMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
((totalWorkingDays++))
	empcheck=$((RANDOM%3))
		case $empcheck in
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
	totalEmpHrs=$(($totalEmpHrs+$empHrs))
done
totalSalary=$(($totalEmpHrs*$empRatePerHr))
echo "Total Salary = " $totalSalary
