cat continuestatement.sh
#!/bin/bash
#Purpose : While loop continue statement
#Version:1.0
#Created Date: Fri Dec 27 09:36:39 PM IST 2024
#Modified Date:
#Author: Aditya
# Start #
opt=y
while [ $opt = y  -o $opt = Y ]
    do 
    echo -e "Please enter the number : \c"
    read -r num
    if [ $num -le 50 ]; then
        sq=`expr $num \* $num`
        echo "Square of provided number $num: $sq"
    else 
        echo "Number not in the given Range"
    fi
echo -e "Do you want to continue [y/n]: \c"
read -r wish
if [ $wish = y -o $wish = Y ]; then
    continue
else 
    echo "Thank you for Exiting...."
    exit 
fi
done
# END #
❯ ./continuestatement.sh
Please enter the number : 4
Square of provided number 4: 16
Do you want to continue [y/n]: y
Please enter the number : 2
Square of provided number 2: 4
Do you want to continue [y/n]: n
Thank you for Exiting....

