#!/bin/bash
echo "Killing connection and sleeping"
TZ=America/Phoenix date
./bip.sh 10.0.0.167 ; ./bip.sh 10.0.1.103 ; ./bip.sh 10.0.2.117 ; sleep 1800s ; ./bip.sh 10.0.0.167 -d ; ./bip.sh 10.0.1.103 -d ; ./bip.sh 10.0.2.117 -d
echo "Done sleeping"
TZ=America/Phoenix date
