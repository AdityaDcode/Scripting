❯ cat logicalops.sh
#!/bin/bash
#Purpose : Logical operators/Boolean Operators. Student marks validation
#Version: 1.0
#Created Date: Fri Dec 27 07:01:57 PM IST 2024
#Modified Date:
#Author: Aditya
# Start #
echo "Enter your maths subject marks: \c"
read -r m

echo "Enter your physics subject marks: \c"
read -r p

echo "Enter your chemistry subject marks: \c"
read -r c

if test $m -ge 35 -a $p -ge 35 -a $c -ge 35
then
echo "Congratulations, you have passed in all subjects"
else 
echo "Sorry, You cannot proceed further" 
fi

# END #
❯ ./logicalops.sh
Enter your maths subject marks: \c
35
Enter your physics subject marks: \c
35
Enter your chemistry subject marks: \c
35
Congratulations, you have passed in all subjects
❯ ./logicalops.sh
Enter your maths subject marks: \c
34
Enter your physics subject marks: \c
35
Enter your chemistry subject marks: \c
35
Sorry, You cannot proceed further
