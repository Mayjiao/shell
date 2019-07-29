#!/bin/bash
funWithReturn(){
    echo "这个函数对输入的两个数字进行相加"
	echo "输入第一个数字："
	read adone
	echo "输入第二个数组："
	read anotherone
	echo "两个数字分别为$adone和$anotherone"
    return $(($adone+$anotherone))
}
funWithReturn
echo "输入的两个数字之和为$?"

