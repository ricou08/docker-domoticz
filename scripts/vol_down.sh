#!/bin/bash

vol=$({ echo "?V"; sleep 0.1; } | telnet Ampli_salon | grep -o -E '[0-9]+') 
vol=$(printf "%.3d" $(expr $vol - 20))
cmd=$vol"VL"
sleep 0.2
{ echo "$cmd"; sleep 0.1; } | telnet Ampli_salon
