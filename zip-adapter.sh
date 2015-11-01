#!/bin/sh

proj="ISPAdapter"

zip_file="$proj-1.zip"

rm -f $zip_file

zip $zip_file $proj.GTL $proj.GBL $proj.GTS $proj.GBS $proj.GTO $proj.GBO $proj.GTP $proj.GML $proj.drd $proj.drl $proj.dri $proj.gpi $proj-README.txt

echo "$zip_file created"
