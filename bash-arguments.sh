#!/bin/bash
# By @HadiDotSh

while [[ ! -z "$*" ]];do

    if [[ "$1" == "-e" || "$1" == "--echo" ]];then
        shift
        printf "\n$1"
        shift
        
    elif [[ "$1" == "-h" ]];then
        shift
        printf "\nThis is help"

    elif [[ "$1" == "-o" ]];then
        shift
        if [[ "$1" == "1" ]];then
            shift
            printf "\nOption 1"
        elif [[ "$1" == "2" ]];then
            shift
            printf "\nOption 2"
        fi

    else
        shift
        printf "\nArguments Not Found"
    fi
    
done