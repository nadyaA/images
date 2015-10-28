#!/bin/bash

#don't fail if a command fails
set +e

#remove directories older than 1 day
mtime="-mtime +0"

find /tmp/fakes3_root/ab-builds -maxdepth 1 -type d $mtime -print -exec rm -rf {} \;
find /tmp/fakes3_root/ab-builds-results -maxdepth 1 -type d $mtime -print -exec rm -rf {} \;