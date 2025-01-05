❯ cat untilstatement.sh
#!/bin/bash
#Purpose : Until Loop Example for host ping 
#Version:1.0
#Created Date: Sat Dec 28 05:29:32 AM IST 2024
#Modified Date:
#Author: Aditya
# Start #
echo -e "Please enter the IP address to Ping: \c"
read -r ip 
until ping -c 3 $ip 
do 
    echo "Host $ip is Still Down"
    sleep 1
done 
echo "Host $ip is Up Now"
# END #
❯ ./untilstatement.sh
Please enter the IP address to Ping: google.com
PING google.com (2404:6800:4007:819::200e) 56 data bytes
64 bytes from maa05s18-in-x0e.1e100.net (2404:6800:4007:819::200e): icmp_seq=1 ttl=115 time=6.95 ms
64 bytes from maa05s18-in-x0e.1e100.net (2404:6800:4007:819::200e): icmp_seq=2 ttl=115 time=10.5 ms
64 bytes from maa05s18-in-x0e.1e100.net (2404:6800:4007:819::200e): icmp_seq=3 ttl=115 time=9.29 ms

--- google.com ping statistics ---
3 packets transmitted, 3 received, 0% packet loss, time 2004ms
rtt min/avg/max/mdev = 6.948/8.926/10.539/1.488 ms
Host google.com is Up Now
