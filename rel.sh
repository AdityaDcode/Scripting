❯ cat relationaloperators.sh
#!/bin/bash
#Purpose : Relational operators
#Version:1.0
#Created Date: Fri Dec 27 06:58:16 PM IST 2024
#Modified Date:
#Author: Aditya
# Start #

echo -e "Please provide one number : \c"
read -r h
echo -e "Please provide second number : \c"
read -r g


test $h -lt $g;echo "$?"
test $h -le $g;echo "$?"
test $h -gt $g;echo "$?"
test $h -ge $g;echo "$?"
test $h -eq $g;echo "$?"
test $h -ne $g;echo "$?"


# END #
❯ ./relationaloperators.sh
Please provide one number : 3
Please provide second number : 3
1
0
1
0
0
1
