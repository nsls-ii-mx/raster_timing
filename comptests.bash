#!/bin/bash
mkdir -p tests
filename=$1
file="${1%.*}"
echo $file
~hbernstein/bin/h5dump -pH $filename | grep " SIZE"
cp $filename tests
cd tests
time python3 ~yaya/bin/h5recompress.py $file bszstd
time python3 ~yaya/bin/h5recompress.py $file zstd
echo ${file}_bszstd.h5
~hbernstein/bin/h5dump -pH ${file}_bszstd.h5 | grep " SIZE"
echo ${file}_zstd.h5
~hbernstein/bin/h5dump -pH ${file}_zstd.h5 | grep " SIZE"

