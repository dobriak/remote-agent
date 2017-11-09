#!/bin/bash
if [ -z "${1}" ]; then
    echo "Missing IP address. Format:"
    echo "  ${0} 1.2.3.4 [-d]"
    exit 1
fi
IPADDRESS=${1}
ACTION="-A"

if [ "${2}" == "-d" ]; then
    ACTION="-D"
fi

ping -c 3 ${IPADDRESS}
sudo iptables -L | grep ${IPADDRESS}
sudo iptables ${ACTION} INPUT -s ${IPADDRESS} -j DROP
sudo iptables -L | grep ${IPADDRESS}
ping -c 3 ${IPADDRESS}
