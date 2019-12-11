#!/bin/bash
# read the config file and grab the sourced and destined variables (for paths)
. repoman.cfg
echo $sourced
echo $destined
directory= pwd
#echo "$#"
echo $directory
sft=0
for i in "$@"
do 
    case $i in
        -h|-\?|--help)
            echo this is how you use the script 
            ;;#fill this out--or get it from the config?
            #exit 0
        -s|--solved)
            echo we gonna copy the solve ones
            ;;            
        -f|--from)
            echo we gonna change where from
            ;;
        -t|--to)
            echo we gonna change where to
            ;;
        --)
            ((sft++))
            shift $sft
            break
            ;;
        -*)
            echo wft
            ;;
    esac
    ((sft++))
    #echo $sft 
done

for j in "$@"
do
echo $j
done

exit 0

