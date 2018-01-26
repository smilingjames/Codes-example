#!/bin/bash


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

