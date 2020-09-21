#!/bin/bash

# get directory of this script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# copy from files to home
cp "$DIR"/files/.[a-zA-Z0-9]* ~/

