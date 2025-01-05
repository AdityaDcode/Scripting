❯ cat ifcontrol.sh
#!/bin/bash
#Purpose : If Statement example
#Version:1.0
#Created Date: Fri Dec 27 07:23:50 PM IST 2024
#Modified Date:
#Author: Aditya
# Start #

echo -e "Please provide value below ten : \c"
read -r value

# proper spacing
if [ $value -le 10 ]; then 
echo "You provided the value $value"
touch /tmp/test{1..100}.txt
echo "Script completed successfully"
fi
# END #
❯ ./ifcontrol.sh
Please provide value below ten : 4
You provided the value 4
Script completed successfully
