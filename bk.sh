#!/bin/bash

echo "creating backup directory" && mkdir ~/backup || echo "directory already exists"

echo "Copying files" && cp /usr/bin/* ~/backup || echo "Something went wrong"


