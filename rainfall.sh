#! /bin/bash


IP=$(curl "http://ifconfig.me/ip")
NM=$(dpkg-query -l nmap)


echo "Public IP: $IP"

echo "Scanning..."

if [ -z "$NM" ]
then

        for PORT in {21,22,80,139,443,445,1433,3389,5895,8080}; do
                (timeout 0.0 echo >/dev/tcp/$IP/$PORT) > /dev/null 2>&1 &&
                        echo "Port $PORT is open" ||
                        echo "Port $PORT is closed"
                done
        else



                nmap -Pn $IP


fi
