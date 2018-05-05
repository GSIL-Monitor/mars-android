#!/bin/bash

LOG_PATH=~/Downloads/mars_log

[ -d $LOG_PATH ] && rm -rf $LOG_PATH

mkdir -p $LOG_PATH
adb pull /sdcard/marssample/log $LOG_PATH

python mars/log/crypt/decode_mars_nocrypt_log_file.py $LOG_PATH/log/
open $LOG_PATH/log/
