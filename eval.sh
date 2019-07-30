#!/bin/bash
X=10
Y=X
echo '$'$Y
echo $$Y
echo ${$Y}
eval echo '$'$Y

输出如下
$X
6809Y
./test.sh: line 6: ${$Y}: bad substitution
10
