#!/bin/bash

data=$(grep $1 /etc/hosts)
if [[ $? == 0 ]]; then
  ip=$(echo "$data"|tail -1| cut -d' ' -f1)
else
  ip=$(host $1 | awk '/has address/ { print $4 }')
fi
echo "$ip"
