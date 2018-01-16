#!/bin/bash
MYTZ="America/Phoenix"
if [[ $# -lt 2 ]]; then
    echo "Missing sleep period and IPs"
    echo "Format: ${0} <sleep seconds> <IP1>[ <IP2> .. <IPn>]"
    exit 1
fi
interval=${1}
shift
for ip in "${@}"; do
    echo "Terminating connection to ${ip}"
    ./blockip.sh ${ip}
done
echo "======================================"
echo "* Sleeping for ${interval} seconds..."
echo "======================================"
TZ=${MYTZ} date
sleep ${interval}
echo "======================"
echo "* Finished sleeping. *"
echo "======================"
TZ=${MYTZ} date
for ip in "${@}"; do
    echo "Restoring connection to ${ip}"
    ./blockip.sh ${ip} -d
done
echo "Done."
