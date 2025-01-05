                                                                            ─╯
❯ cat whileloop.sh
#!/bin/bash
#Purpose : While loop table
#Version:1.0
#Created Date: Fri Dec 27 09:15:20 PM IST 2024
#Modified Date:
#Author: Aditya

# Start #

echo -e "Please enter one value : \c"
read -r c
i=1
while [ $i -le 10 ]
do 
b=`expr $c \* $i`
echo "$c * $i = $b"
i=`expr $i + 1`
done
# END #
❯ ./whileloop.sh
Please enter one value : 4
4 * 1 = 4
4 * 2 = 8
4 * 3 = 12
4 * 4 = 16
4 * 5 = 20
4 * 6 = 24
4 * 7 = 28
4 * 8 = 32
4 * 9 = 36
4 * 10 = 40
