#!/bin/sh

zip_file="DUBEC-1_2.zip"

rm -f $zip_file

zip $zip_file DUBEC.cmp DUBEC.crc DUBEC.drd DUBEC.drl DUBEC.l15 DUBEC.ly2 DUBEC.plc DUBEC.pls DUBEC.sol DUBEC.stc DUBEC.sts README.txt
