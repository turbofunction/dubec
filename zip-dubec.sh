#!/bin/sh

proj="DUBEC"

zip_file="$proj-2_0.zip"

rm -f $zip_file

zip $zip_file $proj.GTL $proj.GL2 $proj.GL5 $proj.GBL $proj.GTS $proj.GBS $proj.GTO $proj.GBO $proj.GTP $proj.GML $proj.drd $proj.drl $proj.dri $proj.gpi README.txt

echo "$zip_file created"
