#!/bin/bash
. /nsls2/software/mx/dials-v3-7-2/dials_env.sh
let passlimit=$1
let pass=$passlimit
cd ~/jj_rasters/103*/*
for file in *_data*.h5; do
~/bin/onejob $file &
let pass--
if [[ $(( $pass)) == 0 ]]; then
    wait
    let pass=$passlimit
fi 
done
cd ~/jj_rasters/104*/*
for file in *_data*.h5; do
~/bin/onejob $file &
let pass--
if [[ $(( $pass)) == 0 ]]; then
    wait
    let pass=$passlimit
fi 
done
cd ~/jj_rasters/105*/*
for file in *_data*.h5; do
~/bin/onejob $file &
let pass--
if [[ $(( $pass)) == 0 ]]; then
    wait
    let pass=$passlimit
fi 
done
cd ~/jj_rasters/106*/*
for file in *_data*.h5; do
~/bin/onejob $file &
let pass--
if [[ $(( $pass)) == 0 ]]; then
    wait
    let pass=$passlimit
fi 
done
cd ~/jj_rasters/107*/*
for file in *_data*.h5; do
~/bin/onejob $file &
let pass--
if [[ $(( $pass)) == 0 ]]; then
    wait
    let pass=$passlimit
fi 
done
cd ~/jj_rasters/108*/*
for file in *_data*.h5; do
~/bin/onejob $file &
let pass--
if [[ $(( $pass)) == 0 ]]; then
    wait
    let pass=$passlimit
fi 
done
cd ~/jj_rasters/109*/*
for file in *_data*.h5; do
~/bin/onejob $file &
let pass--
if [[ $(( $pass)) == 0 ]]; then
    wait
    let pass=$passlimit
fi 
done
wait
