#!/bin/bash
#声明关联数组
declare -A fruits_value
#给数组赋值
fruits_value=([apple]='100 dollars' [orange]='150 dollars')
#取值
echo ${fruits_value[apple]}
#列出数组索引
echo ${!fruits_value[*]}
#列出数组索引
echo ${!fruits_value[@]}
#列出所有元素
echo ${fruits_value[*]}
#求数组长度
echo ${#fruits_value[*]}
