#!/bin/bash -x

        echo "Enter a name"
        read name
        if [ -d $name ]
        then
                echo "Folder already exists."
        else
                mkdir $name
fi
