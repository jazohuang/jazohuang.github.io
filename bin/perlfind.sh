#!/bin/sh
# author : jazohuang

#
# vi ~/.bash_profile
# alias pf='~/perlfind.sh'
# source ~/.bash_profile
# cat 123 | pf 3
# cat 123 | pf -s 3
#

ALL_STRING=`cat`
SEARCH_STRING=$1

while getopts ":s:" opt
do
    case $opt in
        s)
        SEARCH_STRING="$OPTARG"
        ;;
        ?)
        echo "help : cat 123 | pf -s 3"
        exit 1
    esac
done
echo "${ALL_STRING}" | perl -pe "s/$SEARCH_STRING/\x1b[42m$&\x1b[0m/"