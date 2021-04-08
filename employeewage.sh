echo "Welcome to Employee Wage Computation Program on Master Branch"
isFullTime=1
isAbsent=0
isPartTime=2
attendance=$((RANDOM%3))
if [ $attendance -eq $isFullTime ]
then
	echo "Employee is Present"
elif [ $attendance -eq $isAbsent ]
then
	echo "Employee is Absent"
else
	echo "Employee is Part Timer"
fi
