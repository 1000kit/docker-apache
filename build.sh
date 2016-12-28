#!/bin/bash

cd "$( dirname "${BASH_SOURCE[0]}" )"
pwd

echo "build apache docker image"
docker build --rm --force-rm -t 1000kit/apache .


#end
