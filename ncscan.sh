#! bin/bash

echo -n "Host to scan: "
read host

for p in {21,22,80,443,445,1433,3389,5895,8080}
do
        nc -z -w 1 $host $p &&
                echo "Port $p is open" ||
                echo "Port $p is closed"

        done
