#/bin/bash
data="name,gender,area,age"
IFS=,
for item in $data
do
    echo item:$item
done

#IFS(Internal Field Separator) 内部字段分隔符
