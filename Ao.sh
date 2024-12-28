❯ cat arithmeticoperators.sh
#!/bin/bash
#Purpose : Arithmetic Operators
#Version:1.0
#Created Date: Fri Dec 27 06:48:00 PM IST 2024
#Modified Date:
#Author: Aditya
# Start #
echo -e "Please enter some value: \c"
read -r a
echo -e "Please enter another value: \c"
read -r b

echo "a+b value is $(($a+$b))"
echo "a-b value is $(($a-$b))"
echo "axb value is $(($a*$b))"
echo "a/b value is $(($a/$b))"
echo "a%b value is $(($a%$b))"
# END #
❯ ./arithmeticoperators.sh
Please enter some value: 14
Please enter another value: 2
a+b value is 16
a-b value is 12
axb value is 28
a/b value is 7
a%b value is 0
