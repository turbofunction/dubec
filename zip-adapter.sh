#!/bin/sh

proj="ISPAdapter"

zip_file="$proj-C.zip"

rm -f $zip_file

zip $zip_file $proj.GTL $proj.GBL $proj.GTS $proj.GBS $proj.GTO $proj.GML $proj.drd $proj.GTP $proj.drl $proj.dri $proj.gpi $proj-README.txt

echo "$zip_file created"
