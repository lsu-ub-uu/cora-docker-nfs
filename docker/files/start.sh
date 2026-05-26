#!/bin/bash

/usr/sbin/rpcbind
/usr/bin/ganesha.nfsd -L /dev/stdout -N DEBUG -F
