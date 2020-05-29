#! /usr/bin/env bash

echo "DNS Enumeration and Scan"
echo ""

echo -n  "Domain Name: "
read NAME
echo "Scanning " $NAME

amass enum -d $NAME -o $NAME.txt

nmap -Pn -p 21,22,80,43,135,143,389,443,445,636,1433,3389,8080 -iL $NAME.txt

