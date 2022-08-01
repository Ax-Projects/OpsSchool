#!/bin/bash
files=($@)
byteSize=0

# Setting destenation host
if [ $(hostname) == "server1" ]; then
    host="server2"
elif [ $(hostname) == "server2" ]; then
    host="server1"
else
    host=$(hostname)
fi

# Check for number of given arguments
if [ $# -lt 2 ]; then
    echo "Please enter at least 2 arguments when calling this script"
    exit 1
else
    argCount=$#
fi

# this syntax is used for older bash version support
dest=${files[${#files[@]}-1]}

## Use a For-Loop to send files one by one using SCP. Validate that the file exists first.
for file in ${files[@]}
do
    if [ -f "$file" ]; then
        scp -o StrictHostKeyChecking=no $file $host:$dest
        # Adding file size in bytes to total byte size count.
        byteSize=$(( $byteSize + $(wc -c < $file) ))
    else continue
    fi
done 

## some testing echos
# echo "destenation path: $dest"
# echo "argCount: $argCount"
# echo "ByteSize: $byteSize"
# echo "array: ${files[@]}"
echo $byteSize