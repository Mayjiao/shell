#!/bin/bash
#退出状态码最大为255，超过则进行模运算
var1=10
var2=20
var3=$[ $var1 + $var2]
echo the answer is $var3
exit 5
