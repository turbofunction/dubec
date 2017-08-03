#!/bin/sh

proj="DUBEC"

zip_file="$proj-3.zip"

rm -f $zip_file

zip $zip_file \
    $proj.boardoutline.ger \
    $proj.toplayer.ger \
    $proj.internalplane1.ger \
    $proj.internalplane2.ger \
    $proj.bottomlayer.ger \
    $proj.topsoldermask.ger \
    $proj.bottomsoldermask.ger \
    $proj.topsilkscreen.ger \
    $proj.bottomsilkscreen.ger \
    $proj.drills.xln \
    $proj.drills.dri \
    $proj.drl \
    $proj.tcream.ger \
    README.txt

echo "$zip_file created"

rm $proj.*.ger $proj.*.gpi $proj.drills.*  $proj.drl
