#!/bin/bash
for ip in 10.173.23.{1..255};
do
   ping $ip -c 2 &> /dev/null ;
   if [ $? -eq 0 ];
   then
       echo $ip is alive
   fi
done


#或下述写法
#将循环体放入()&中，()&中的命令会在子shell中执行，而 & 会将其置于后台
for ip in 192.168.0.{1..255} ;
do
    (
        ping $ip -c2 &> /dev/null ;
        if [ $? -eq 0 ];
        then
        echo $ip is alive
        fi
   )&
done
wait
