#!/bin/bash

echo "====================================="
fileName()
{
        local SRC="$1"
        for i in $SRC; do
                echo "fetching each file $i"
        done
}
echo "Operation hampu begins......."
case $1 in
        "fetch") sum "$2" ;;
        *)
                echo "operation hampu completed..."
                ;;
esac
echo "====================================="

fileCount()
{
        local SRC="$1"
        count=0
        for i in $SRC; do
                ((count++))
        done
        echo "the total files is: $count"
}
echo "Operation hampu begins......."
case $1 in
        "fetch") sum "$2" ;;
        *)
                echo "operation hampu completed..."
                ;;
esac
echo "====================================="

#command file.sh "fetch" "*"
