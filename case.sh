❯ cat casestatement.sh
#!/bin/bash
#Purpose : Example for case statement
#Version:1.0
#Created Date: Fri Dec 27 09:30:48 PM IST 2024
#Modified Date:
#Author: Aditya
# Start #

echo -c "Enter a number: \c"
read -r a
echo -c "Enter b number: \c"
read -r b

echo "1. Sum"
echo "2. Sub"
echo "3. Mul"
echo "4. Div"
echo "5. Mod"

echo -c "Enter your choice here: \c"
read -r ch
case $ch in 
1) echo "Sum of $a and $b = `expr $a + $b`";;
2) echo "Sub of $a and $b = `expr $a - $b`";;
3) echo "Mul of $a and $b = `expr $a \* $b`";;
4) echo "Div of $a and $b = `expr $a / $b`";;
5) echo "Mod of $a and $b = `expr $a % $b`";;
*) echo "Invalid option !"
esac
# END #
❯ ./casestatement.sh
-c Enter a number: \c
5
-c Enter b number: \c
6
1. Sum
2. Sub
3. Mul
4. Div
5. Mod
-c Enter your choice here: \c
3
Mul of 5 and 6 = 30
