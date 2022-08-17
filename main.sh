#!/bin/bash

git init
touch junk

declare -i x
echo "Enter Beginning date [yyyymmdd]"
read x

declare -i y
echo "Enter End date [yyyymmdd]"
read y

DATE=$x

while [ $DATE -le $y ]; do
    echo 'a' >>junk

    git add .

    msg="commit$DATE"
    # echo ("$DATE + 1 day" +%Y%m%d)
    # Use double quotes around the commit message and date
    git commit -m "$msg" --date="$ 17/08/22 10:10:10"

    # Calculate the next date using the 'date' command
    DATE=$(date "$DATE + 1 day" +%Y%m%d)
done
