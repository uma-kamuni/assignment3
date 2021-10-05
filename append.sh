#!/bin/bash -x
for file in `ls *.log.1`
  do
          folderName=`echo $file | awk -F. '{print $1 }'`
              echo  $folderName
           if [ -d  $folderName ]
           then
                 rm -r $folderName
           fi
            myvalue=$folderName-"`date +"%d%m%Y"`".log
            mv $file $myvalue
              echo $myvalue
done
