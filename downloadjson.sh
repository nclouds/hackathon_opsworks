#!/bin/bash

if [[ -z "$1" || -z "$2" ]]; then
  echo -e "Usage: ./downloadjson username ipaddress [outputto]\nLeaving output empty write to stdout"
  exit 0
fi

json=`ssh $1@$2 sudo /usr/sbin/opsworks-agent-cli get_json`

if [ "$?" -gt 0 ]; then
  echo "Cannot get json. Check user, ip, sshkey"
  exit 1
fi

if [[ -z "$3" ]]; then
  echo -e "$json"
  exit 0
fi

echo -e "$json" > "$3"
