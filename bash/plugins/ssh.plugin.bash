#!/bin/bash

ssh_add () {
  echo -en "\n\nHost $1\n  HostName $2\n  User $3\n  ServerAliveInterval 30\n  ServerAliveCountMax 120" >> ~/.ssh/config
}

ssh_list () {
  awk '$1 ~ /Host$/ { print $2 }' ~/.ssh/config
}