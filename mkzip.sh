#!/bin/sh

zip_file="DUBEC-1_3.zip"

rm -f $zip_file

zip $zip_file DUBEC.GTL DUBEC.GL2 DUBEC.GL5 DUBEC.GBL DUBEC.GTS DUBEC.GBS DUBEC.GTO DUBEC.GBO DUBEC.GTP DUBEC.GML DUBEC.drd DUBEC.drl README.txt

echo "$zip_file created"
