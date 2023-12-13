#!/bin/bash
set -x
data = `df -h . | tail -1 | awk -F " " '{print $5}' | sed 's/%//g'`
if [ $data -gt 20 ]
then
echo "memory storage crosses 20 ,please take a action"
fi
