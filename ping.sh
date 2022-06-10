#!/bin/bash


#usage :./ping.sh <ip> > ips.txt
#ip should be only the first three octets e.g 192.168.1

echo -e "       =========================  "
 echo -e "=======Author:Meshack Kipngetich=============="
 echo -e "       =========================       "
 echo -e "  ____    ____    ___   ____                 "
 echo -e " |    \  /    |  |   | /   |              "
 echo -e " |     \/     |  |   |/   /               "
 echo -e " |   |\  /|   |  |   |   /_                "
 echo -e " |   | \/ |   |  |   |\    \              "
 echo -e " |___|    |___|  |___| \____\                 "
 echo -e ""
 
 echo -e "===These are the list of live IPs ===="
 

for ip in `seq 1 254` ; do
  ping -c 1 $1.$ip  | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
  done
