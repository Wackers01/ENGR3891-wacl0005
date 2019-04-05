#!/bin/bash
local=$1 
remote=$2

if [ "${local}x" == "x" ]; then
  echo "ERROR: usage /bin/bash unit3/check-connectivity.sh <IP of shared interface on first VM> <IP of shared interface on second VM>"
  exit 3
fi
if [ "${remote}x" == "x" ]; then
  echo "ERROR: usage /bin/bash unit3/check-connectivity.sh <IP of shared interface on first VM> <IP of shared interface on second VM>"
  exit 3
fi

# Get local ethernet addresses
/sbin/ifconfig | grep ether >unit3/local.eth
localmacs=`cat unit3/local.eth | wc -l`
# Confirm local address gets same
ssh ${local} /sbin/ifconfig | grep ether > unit3/localssh.eth
localsshmacs=`cat unit3/localssh.eth | wc -l`
ssh ${remote} /sbin/ifconfig | grep ether > unit3/remote.eth
remotemacs=`cat unit3/remote.eth | wc -l`
if [ "$localmacs" -lt 2 ]; then
  echo "ERROR: I couldn't see at least two network interfaces on this virtual machine"
  exit 3
fi
if [ "$localsshmacs" -lt 2 ]; then
  echo "ERROR: I couldn't see at least two network interfaces on this virtual machine, when sshing to localhost"
  exit 3
fi
if [ "$remotemacs" -lt 2 ]; then
  echo "ERROR: I couldn't see at least two network interfaces on the other virtual machine"
  exit 3
fi
differences=`diff unit3/local.eth unit3/localssh.eth | wc -l`
if [ "$differences" -ne 0 ]; then
  echo "ERROR: I saw different interfaces on this virtual machine when using ssh to localhost"
  exit 3
fi
differences=`diff unit3/local.eth unit3/remote.eth | wc -l`
if [ "$differences" -lt 2 ]; then
  echo "ERROR: When connecting to other virtual machine, it looks like I saw the same interfaces as on this virtual machine.  Did you really give me the IP address for the first and second virtual machines on the command line?"
  exit 3
fi

echo "VM1" > unit3/connect.log
cat unit3/local.eth >> unit3/connect.log
echo "VM2" >> unit3/connect.log
cat unit3/remote.eth >> unit3/connect.log

echo "SUCCESS: Tests passed (don't forget to commit unit3/connect.log)"
