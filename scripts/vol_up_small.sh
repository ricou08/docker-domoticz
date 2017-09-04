#!/bin/bash

vol=$({ echo "?V"; sleep 0.1; } | telnet Ampli_salon | grep -o -E '[0-9]+')
#vol=${vol:4}
echo $vol
vol=$(printf "%.3d" $(expr $vol + 10))
cmd=$vol"VL"
sleep 0.1
{ echo "$cmd"; sleep 0.1; } | telnet Ampli_salon
