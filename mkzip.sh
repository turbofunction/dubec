#!/bin/sh

zip_file="DUBEC-1_4.zip"

rm -f $zip_file

zip $zip_file DUBEC.GTL DUBEC.GL2 DUBEC.GL5 DUBEC.GBL DUBEC.GTS DUBEC.GBS DUBEC.GTO DUBEC.GBO DUBEC.GTP DUBEC.GML DUBEC.drd DUBEC.drl DUBEC.dri DUBEC.gpi README.txt

echo "$zip_file created"
