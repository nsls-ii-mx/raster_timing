#!/bin/bash
dataset=$1
start=$2
count=$3
time bash ./timing6.bash 1 "$dataset" "lz4" $start $count
echo time bash ./timing6.bash 1 "$dataset" "lz4"  $start $count
time bash ./timing6.bash 1 "$dataset" "bslz4" $start $count
echo time bash ./timing6.bash 1 "$dataset" "bslz4"  $start $count
time bash ./timing6.bash 1 "$dataset" "slz4" $start $count
echo time bash ./timing6.bash 1 "$dataset" "slz4"  $start $count
time bash ./timing6.bash 1 "$dataset" "zstd 2" $start $count
echo time bash ./timing6.bash 1 "$dataset" "zstd 2"  $start $count
time bash ./timing6.bash 1 "$dataset" "zstd 3" $start $count
echo time bash ./timing6.bash 1 "$dataset" "zstd 3"  $start $count
time bash ./timing6.bash 1 "$dataset" "zstd 4" $start $count
echo time bash ./timing6.bash 1 "$dataset" "zstd 4"  $start $count
time bash ./timing6.bash 1 "$dataset" "zstd 5" $start $count
echo time bash ./timing6.bash 1 "$dataset" "zstd 5"  $start $count
time bash ./timing6.bash 1 "$dataset" "zstd 6" $start $count
echo time bash ./timing6.bash 1 "$dataset" "zstd 6"  $start $count
time bash ./timing6.bash 1 "$dataset" "bszstd 2" $start $count
echo time bash ./timing6.bash 1 "$dataset" "bszstd 2"  $start $count
time bash ./timing6.bash 1 "$dataset" "bszstd 3" $start $count
echo time bash ./timing6.bash 1 "$dataset" "bszstd 3"  $start $count
time bash ./timing6.bash 1 "$dataset" "bszstd 4" $start $count
echo time bash ./timing6.bash 1 "$dataset" "bszstd 4"  $start $count
time bash ./timing6.bash 1 "$dataset" "bszstd 5" $start $count
echo time bash ./timing6.bash 1 "$dataset" "bszstd 5"  $start $count
time bash ./timing6.bash 1 "$dataset" "bszstd 6" $start $count
echo time bash ./timing6.bash 1 "$dataset" "bszstd 6"  $start $count
time bash ./timing6.bash 1 "$dataset" "szstd 2" $start $count
echo time bash ./timing6.bash 1 "$dataset" "szstd 2"  $start $count
time bash ./timing6.bash 1 "$dataset" "szstd 3" $start $count
echo time bash ./timing6.bash 1 "$dataset" "szstd 3"  $start $count
time bash ./timing6.bash 1 "$dataset" "szstd 4" $start $count
echo time bash ./timing6.bash 1 "$dataset" "szstd 4"  $start $count
time bash ./timing6.bash 1 "$dataset" "szstd 5" $start $count
echo time bash ./timing6.bash 1 "$dataset" "szstd 5"  $start $count
time bash ./timing6.bash 1 "$dataset" "szstd 6" $start $count
echo time bash ./timing6.bash 1 "$dataset" "szstd 6"  $start $count
