#!/bin/bash
# read the config file and grab the sourced and destined variables (for paths)
. repoman.cfg
echo sourced $sourced
echo destined $destined

sft=0 #shift counter
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
        -f|--from) #need logic to grab filename values
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

#rsync --exclude==g $sourced $destined
rsync -r --exclude "solved" --exclude "solution" $sourced $destined
# ftc=0 #file to copy counter
# found= find -L $sourced -print
# for each in $found
# do
# ((fts++))
# echo $each $ftc #
# done
exit 0

