#!/bin/bash

vol=$({ echo "?V"; sleep 0.1; } | telnet Ampli_salon | grep -o -E '[0-9]+')
echo $vol
vol=$(printf "%.3d" $(expr $vol - 10))
echo $vol
cmd=$vol"VL"
sleep 0.1
{ echo "$cmd"; sleep 0.1; } | telnet Ampli_salon
