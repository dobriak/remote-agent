#!/bin/bash
echo "Testing services"
echo "Complete"
curl test1complete.marathon.l4lb.thisdcos.directory
curl test2complete.marathon.l4lb.thisdcos.directory
echo "Partial"
curl test1partial.marathon.l4lb.thisdcos.directory
curl test2partial.marathon.l4lb.thisdcos.directory
echo "Done"