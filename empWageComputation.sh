echo "Welcome to Employee Wage Computation Program"

#!/bin/bash -x

empRatePerHr=20
empHrs=8
var=$(( RANDOM % 2 ))
if [[ $var -eq 1 ]]
then
	echo salary=$(($empRatePerHr*$empHrs))
else
	echo salary=0
fi
