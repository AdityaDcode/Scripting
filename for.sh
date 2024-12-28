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
PING google.com (2404:6800:4007:819::200e) 56 data bytes
64 bytes from maa05s18-in-x0e.1e100.net (2404:6800:4007:819::200e): icmp_seq=1 ttl=115 time=43.1 ms

--- google.com ping statistics ---
1 packets transmitted, 1 received, 0% packet loss, time 0ms
rtt min/avg/max/mdev = 43.102/43.102/43.102/0.000 ms
google.com Host is up
PING amazon.com (205.251.242.103) 56(84) bytes of data.
64 bytes from s3-console-us-standard.console.aws.amazon.com (205.251.242.103): icmp_seq=1 ttl=237 time=238 ms

--- amazon.com ping statistics ---
1 packets transmitted, 1 received, 0% packet loss, time 0ms
rtt min/avg/max/mdev = 238.159/238.159/238.159/0.000 ms
amazon.com Host is up
PING duckduckgo.com (20.204.244.192) 56(84) bytes of data.
64 bytes from 20.204.244.192: icmp_seq=1 ttl=113 time=31.5 ms

