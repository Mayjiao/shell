#!/bin/bash
for ip in 10.173.23.{1..255};
do
   ping $ip -c 2 &> /dev/null ;
   if [ $? -eq 0 ];
   then
       echo $ip is alive
   fi
done
