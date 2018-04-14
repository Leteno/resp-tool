#!/bin/bash

[ $# -lt 1 ] && {
    # usage
    echo "usage: $0 <local-host first-3-bytes>"
    exit 1
}

prefix=$1

for i in `seq 0 255`; do
    ip=$prefix".$i"
    ping $ip -c 1 -t 1 1>&2 2>/dev/null && {
	echo pass: $ip
    }
done
