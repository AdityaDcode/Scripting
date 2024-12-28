```bash
#!/bin/bash
#Purpose : Variables
#Version: 1.0
#Created Date: Fri Dec 27 05:15:29 PM IST 2024
#Modified Date:
#Author: Aditya
# Start #
A=10
B=23
HOSTNAME=$(hostname)
DATE=`date`
1value=333
False@Var=False
Hyphen-a=WrongValue

echo "Variable A Value: $A"
echo "Variable B Vaule: $B"
echo "Variable HOST value: $HOSTNAME"
echo "Variable DATE value: $DATE"
echo "Wrong Variable value $lvalue"
echo "False @ Variable $False@Var"
echo "hyphen-a Variable Value: $Hyphen-a"

# END #

Output

❯ nano variables.sh
❯ ./variables.sh
./variables.sh: line 12: 1value=333: command not found
./variables.sh: line 13: False@Var=False: command not found
./variables.sh: line 14: Hyphen-a=WrongValue: command not found
Variable A Value: 10
Variable B Vaule: 23
Variable HOST value: Blaze
Variable DATE value: Fri Dec 27 06:28:37 PM IST 2024
Wrong Variable value 
False @ Variable @Var
hyphen-a Variable Value: -a
