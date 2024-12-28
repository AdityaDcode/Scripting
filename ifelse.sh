❯ cat ifelsestatement.sh
#!/bin/bash
#Purpose : If else statement
#Version:1.0
#Created Date: Fri Dec 27 07:26:55 PM IST 2024
#Modified Date:
#Author: Aditya
# Start #
echo -e "Enter your age"
read -r age

if [ $age -ge 18 ]; then
echo "You can drive!"
else
echo "You cannot drive!"
fi

# END #
❯ ./ifelsestatement.sh
Enter your age
13
You cannot drive!
