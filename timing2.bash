#!/bin/bash
. /nsls2/software/mx/dials-v3-7-2/dials_env.sh
let passlimit=$1
dataset=$2
compression="$3"
let pass=$passlimit
if [  $dataset == "103" ] || [ $dataset == "all" ]; then
cd /dev/shm/Raster_4_AMX_COmpression_Tests/103*/*
for file in *_data*.h5; do
~/bin/onejob $file "$compression" &
if [ $passlimit != 1 ]; then
~/bin/otherjob $file "$compression" &
let pass--
fi
let pass--
if [[ $(( $pass)) == 0 ]]; then
    wait
    let pass=$passlimit
fi 
done
fi
if [  $dataset == "104" ] || [ $dataset == "all" ]; then
cd /dev/shm/Raster_4_AMX_COmpression_Tests/104*/*
for file in *_data*.h5; do
~/bin/onejob $file "$compression" &
if [ $passlimit != 1 ]; then
~/bin/otherjob $file "$compression" &
let pass--
fi
let pass--
if [[ $(( $pass)) == 0 ]]; then
    wait
    let pass=$passlimit
fi 
done
fi
if [  $dataset == "105" ] || [ $dataset == "all" ]; then
cd /dev/shm/Raster_4_AMX_COmpression_Tests/105*/*
for file in *_data*.h5; do
~/bin/onejob $file "$compression" &
if [ $passlimit != 1 ]; then
~/bin/otherjob $file "$compression" &
let pass--
fi
let pass--
if [[ $(( $pass)) == 0 ]]; then
    wait
    let pass=$passlimit
fi 
done
fi
if [  $dataset == "106" ] || [ $dataset == "all" ]; then
cd /dev/shm/Raster_4_AMX_COmpression_Tests/106*/*
for file in *_data*.h5; do
~/bin/onejob $file "$compression" &
if [ $passlimit != 1 ]; then
~/bin/otherjob $file "$compression" &
let pass--
fi
let pass--
if [[ $(( $pass)) == 0 ]]; then
    wait
    let pass=$passlimit
fi 
done
fi
if [  $dataset == "107" ] || [ $dataset == "all" ]; then
cd /dev/shm/Raster_4_AMX_COmpression_Tests/107*/*
for file in *_data*.h5; do
~/bin/onejob $file "$compression" &
if [ $passlimit != 1 ]; then
~/bin/otherjob $file "$compression" &
let pass--
fi
let pass--
if [[ $(( $pass)) == 0 ]]; then
    wait
    let pass=$passlimit
fi 
done
fi
if [  $dataset == "108" ] || [ $dataset == "all" ]; then
cd /dev/shm/Raster_4_AMX_COmpression_Tests/108*/*
for file in *_data*.h5; do
~/bin/onejob $file "$compression" &
if [ $passlimit != 1 ]; then
~/bin/otherjob $file "$compression" &
let pass--
fi
let pass--
if [[ $(( $pass)) == 0 ]]; then
    wait
    let pass=$passlimit
fi 
done
fi
if [  $dataset == "109" ] || [ $dataset == "all" ]; then
cd /dev/shm/Raster_4_AMX_COmpression_Tests/109*/*
for file in *_data*.h5; do
~/bin/onejob $file "$compression" &
if [ $passlimit != 1 ]; then
~/bin/otherjob $file "$compression" &
let pass--
fi
let pass--
if [[ $(( $pass)) == 0 ]]; then
    wait
    let pass=$passlimit
fi 
done
fi
wait
