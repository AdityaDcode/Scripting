
❯ cat nestedifelse.sh
#!/bin/bash
#Purpose : Nested if else 
#Version:1.0
#Created Date: Fri Dec 27 07:51:26 PM IST 2024
#Modified Date:
#Author: Aditya
# Start #

echo -e "Enter your nationality"
read -r nationality
echo -e "Enter your age"
read -r age

if [ $nationality = "indian" ]; then
    if [ $age -lt 18 ]; then
    echo "You cant drive because you are too young"
    else
    echo "You are eligible for DL"
    fi

else
echo "You must have to be indian to get a DL"
fi

# END #
❯ ./nestedifelse.sh
Enter your nationality
indian
Enter your age
12
You cant drive because you are too young
❯ ./nestedifelse.sh
Enter your nationality
american
Enter your age
22
You must have to be indian to get a DL
