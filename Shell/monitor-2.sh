#!/bin/bash

#check NIC status


for((i=20;i<=100;i++));
do 
if cat /sys/class/net/eth0/carrier| grep -q 1;
then
	echo "network is ready"
	break;
else
	echo "network is not ready"
	break;
fi
done

while true
do
  if pgrep test  >/dev/null ;then
     echo "up"
  else
     echo "down"
     ./test &
  fi
  sleep 2
done

