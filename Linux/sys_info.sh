#! /bin/bash

# sets variable now, un and ip
now=$(date)
un=$(uname -a)
ip=$(hostname -i)

# makes directory /research and saves the results to sys_info.txt inside the directory
mkdir ~/research >> ~/research/sys_info.txt

# Displays a message that includes information on the system as well as adding the message to the sys_info.txt file
echo "System Information" >> ~/research/sys_info.txt
echo -e "$now " >> ~/research/sys_info.txt
echo -e "\nUname info: $un " >> ~/research/sys_info.txt
echo -e "\nIP address: $ip " >> ~/research/sys_info.txt
echo -e "\nHostname: $HOSTNAME " >> ~/research/sys_info.txt
echo -e "\nDNS Servers: " >> ~/research/sys_info.txt
cat /etc/resolv.conf >> ~/research/sys_info.txt
echo -e "\nMemory Info: " >> ~/research/sys_info.txt
free >> ~/research/sys_info.txt
echo -e "\nCPU Info: " >> ~/research/sys_info.txt
lscpu | grep CPU >> ~/research/sys_info.txt
echo -e "\nDisk Usage: " >> ~/research/sys_info.txt
df -H | head -2 >> ~/research/sys_info.txt
echo -e "\nWho is logged in: \n $(who -a) \n" >> ~/research/sys_info.txt

sudo find /home -type f -perm 777 >> ~/research/sys_info.txt
echo -e "\nTop 10 Processes" >> ~/research/sys_info.txt
ps aux --sort -%mem | awk {'print $1, $2, $3, $4, $11'} | head >> ~/research /sys_info.txt 
