#!/bin/bash

[ $# -lt 1 ] && {
    echo "usage: "$0" <raspberrypi-ip-addr>"
    exit 1
}
ip=$1
ssh pi@${ip} -p 22