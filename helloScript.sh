#! /bin/bash

age=20

if [ "$age" -gt 18 ] && [ "$age" -lt 40 ]
then
    echo "age is correct"
else 
    echo "age is not correct"
fi

