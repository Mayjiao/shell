#!/bin/bash

logfile="diskusage.log"

if [[ -n $1 ]]
then
    logfile=$1
fi

#使用环境变量或是采用硬编码的方式指定用户名
user=$USER

IP_LIST="127.0.0.1"

if [ ! -e $logfile ]
then
    printf "%-8s %-14s %-9s %-8s %-6s %-6s %-6s %s\n" \
    "Date" "IP address" "Device" "Capacity" "Used" "Free" \
    "Percent" "Status" > $logfile
fi
(
for ip in $IP_LIST;
do
    ssh $user@$ip 'df -H' | grep ^/dev/ > /tmp/$$.df

    while read line;
    do
    cur_date=$(date +%D)
    printf "%-8s %-14s" $cur_date $ip
    echo $line | \
        awk '{printf("%-9s %-8s %-6s %-6s %-8s", $1,$2,$3,$4,$5);}'
        pusg=$(echo $line | egrep -o "[0-9]+%")
        pusg=${pusg/\%/};
        if [[ $pusg -lt 80 ]]
        then
        echo SAFE
        else
        echo ALERT
        fi
    done < /tmp/$$.df
done) >> $logfile
