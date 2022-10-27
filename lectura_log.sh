#!/bin/bash

string="OutOfMemory"
file="file.log"
service="mysql"

tail -n 0 -F $file | \
while read LINE
do
echo "$LINE" | grep -q $string
if [ $? = 0 ]
then
echo -e "$string found on $HOSTNAME"
PID=$(pgrep $service)
PID2=$(pgrep -P $PID)
echo "$PID"
echo "$PID2"
sudo kill -9 $PID
sudo kill -9 $PID2
fi
done
