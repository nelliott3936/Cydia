#!/bin/bash

cd $(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
export DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

/opt/local/bin/dpkg-scanpackages -m $DIR /dev/null > Packages

bzip2 -c Packages > Packages.bz2

unset DIR
