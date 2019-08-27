#!/bin/bash
ExecMe() {
    result=$(grep "$1" config.txt)
    # echo $result
    path=$(echo $result| cut -d'_' -f 2)
    cd "$path"
}

# neat little way of running functions from outside the script
Exec$1 "$2"