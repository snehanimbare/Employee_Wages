#!/bin/bash -x
var=$(( RANDOM % 2 ))
if [[ $var -eq 1 ]]
then
echo "Employee is present"
else
echo "Employee is absent"
fi

