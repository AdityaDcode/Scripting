❯ cat hostname
google.com
amazon.com
duckduckgo.com
flipkart.com
friv.com




❯ ./forloop.sh
❯ cat forloop.sh
#!/bin/bash
#Purpose : For loop table
#Version:1.0
#Created Date: Fri Dec 27 09:20:21 PM IST 2024
#Modified Date:
#Author: Aditya
# Start #
for i in `cat hostname`
do 
ping -c 1 $i
valid=`echo $?`
if [ $valid -gt 1 ]; then 
echo $i "Host is not reachable"
else
echo "$i Host is up"
fi
done
# END #
❯ ./forloop.sh


