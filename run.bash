#! /bin/bash

if pgrep -x "node" > /dev/null; then
    echo "Node.js is running"
else
    echo "Launch Node.js"
    exec node ./Computer/app
fi


if [! -r /dev/ttyUSB1 ]; then
    echo "Change permission of /dev/ttyUSB1 to read"
    sudo chmod 666 /dev/ttyUSB1
fi    

if pgrep -x "BaseStationServer" > /dev/null; then
    echo "BaseStattion is running"
else
    echo "Launch BaseStation Server"
    exec ./Computer/backend/BaseStationServer
fi