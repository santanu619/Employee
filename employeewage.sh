echo "Welcome to Employee Wage Computation Program on Master Branch"
isFullTime=1
isAbsent=0
isPartTime=2
FullTimeHr=8
PartTimeHr=4
SalaryPerHr=20
totalSalary=0
attendance=$((RANDOM%3))
Attendance()
{
	if [ $attendance -eq $isFullTime ]
	then
		echo "Employee is Present"
	elif [ $attendance -eq $isAbsent ]
	then
		echo "Employee is Absent"
	else
		echo "Employee is Part Timer"
	fi
}
Attendance
Salary()
{
	 if [ $attendance -eq $isFullTime ]
        then
                totalSalary=$(($totalSalary+($SalaryPerHr*$FullTimeHr)))
        elif [ $attendance -eq $isPartTime ]
        then
                totalSalary=$(($totalSalary+($SalaryPerHr*$PartTimeHr)))
        else
                totalSalary=0
        fi
	echo "Salary is: $totalSalary"
}
Salary



