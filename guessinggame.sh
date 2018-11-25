#!/usr/bin/env bash
# File: guessinggame.sh

num_files=-1
read_num_files=$(ls | wc -l)
over=true

function valid {
    if [[ $num_files -eq $read_num_files ]]
    then 
        over=false
        echo "you are right!"
    elif [[ $num_files -gt $read_num_files ]]
    then    
        echo "you gusess is higher, the actual number is lower"
    else
        echo "you gusess is lower, the actual number is higher"
    fi
}

while $over
do
    echo "Please guess how many files are there in the current dir" 
    read num_files
    valid
done