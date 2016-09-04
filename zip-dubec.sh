#!/bin/sh

proj="DUBEC"

zip_file="$proj-2_3.zip"

rm -f $zip_file

#zip $zip_file $proj.GTL $proj.G2L $proj.G3L $proj.GBL $proj.GTS $proj.GBS $proj.GTO $proj.GBO $proj.GKO $proj.XLN $proj.drl $proj.dri $proj.gpi $proj.GTP README.txt
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
    $proj.tcream.ger \
    README.txt

echo "$zip_file created"
