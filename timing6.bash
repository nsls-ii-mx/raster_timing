#!/bin/bash
. /nsls2/software/mx/dials-v3-7-2/dials_env.sh
let passlimit=$1
dataset=$2
compression="$3"
first=$4
count=$5
end=""
if [ $count != "0" ]; then
  let end=first+count
  echo "end: $end"
fi
let pass=$passlimit
if [  $dataset == "103" ] || [ $dataset == "all" ]; then
cd /dev/shm/jj_rasters/103*/*
for file in *_data*.h5; do
if [ "${end}xx" == "xx" ]; then
~/bin/newjob6 $file "$compression" $first $count &
let pass--
if [[ $(( $pass)) == 0 ]]; then
    wait
    let pass=$passlimit
fi
else
  for (( image=${first}; image<${end}; image++ ))
  do
    ~/bin/newjob6 $file "$compression" $image 1 &
    let pass--
    if [[ $(( $pass)) == 0 ]]; then
      wait
      let pass=$passlimit
    fi
  done
fi 
done
fi
if [  $dataset == "104" ] || [ $dataset == "all" ]; then
cd /dev/shm/jj_rasters/104*/*
for file in *_data*.h5; do
if [ "${end}xx" == "xx" ]; then
~/bin/newjob6 $file "$compression" $first $count &
let pass--
if [[ $(( $pass)) == 0 ]]; then
    wait
    let pass=$passlimit
fi 
else
  for (( image=${first}; image<${end}; image++ ))
  do
    ~/bin/newjob6 $file "$compression" $image 1 &
    let pass--
    if [[ $(( $pass)) == 0 ]]; then
      wait
      let pass=$passlimit
    fi
  done
fi 
done
fi
if [  $dataset == "105" ] || [ $dataset == "all" ]; then
cd /dev/shm/jj_rasters/105*/*
for file in *_data*.h5; do
if [ "${end}xx" == "xx" ]; then
~/bin/newjob6 $file "$compression" $first $count &
let pass--
if [[ $(( $pass)) == 0 ]]; then
    wait
    let pass=$passlimit
fi
else
  for (( image=${first}; image<${end}; image++ ))
  do
    ~/bin/newjob6 $file "$compression" $image 1 &
    let pass--
    if [[ $(( $pass)) == 0 ]]; then
      wait
      let pass=$passlimit
    fi
  done
fi  
done
fi
if [  $dataset == "106" ] || [ $dataset == "all" ]; then
cd /dev/shm/jj_rasters/106*/*
for file in *_data*.h5; do
if [ "${end}xx" == "xx" ]; then
~/bin/newjob6 $file "$compression" $first $count &
let pass--
if [[ $(( $pass)) == 0 ]]; then
    wait
    let pass=$passlimit
fi 
else
  for (( image=${first}; image<${end}; image++ ))
  do
    ~/bin/newjob6 $file "$compression" $image 1 &
    let pass--
    if [[ $(( $pass)) == 0 ]]; then
      wait
      let pass=$passlimit
    fi
  done
fi 
done
fi
if [  $dataset == "107" ] || [ $dataset == "all" ]; then
cd /dev/shm/jj_rasters/107*/*
for file in *_data*.h5; do
if [ "${end}xx" == "xx" ]; then
~/bin/newjob6 $file "$compression" $first $count &
let pass--
if [[ $(( $pass)) == 0 ]]; then
    wait
    let pass=$passlimit
fi 
else
  for (( image=${first}; image<${end}; image++ ))
  do
    ~/bin/newjob6 $file "$compression" $image 1 &
    let pass--
    if [[ $(( $pass)) == 0 ]]; then
      wait
      let pass=$passlimit
    fi
  done
fi 
done
fi
if [  $dataset == "108" ] || [ $dataset == "all" ]; then
cd /dev/shm/jj_rasters/108*/*
for file in *_data*.h5; do
if [ "${end}xx" == "xx" ]; then
~/bin/newjob6 $file "$compression" $first $count &
let pass--
if [[ $(( $pass)) == 0 ]]; then
    wait
    let pass=$passlimit
fi 
else
  for (( image=${first}; image<${end}; image++ ))
  do
    ~/bin/newjob6 $file "$compression" $image 1 &
    let pass--
    if [[ $(( $pass)) == 0 ]]; then
      wait
      let pass=$passlimit
    fi
  done
fi 
done
fi
if [  $dataset == "109" ] || [ $dataset == "all" ]; then
cd /dev/shm/jj_rasters/109*/*
for file in *_data*.h5; do
if [ "${end}xx" == "xx" ]; then
~/bin/newjob6 $file "$compression" $first $count &
let pass--
if [[ $(( $pass)) == 0 ]]; then
    wait
    let pass=$passlimit
fi 
else
  for (( image=${first}; image<${end}; image++ ))
  do
    ~/bin/newjob6 $file "$compression" $image 1 &
    let pass--
    if [[ $(( $pass)) == 0 ]]; then
      wait
      let pass=$passlimit
    fi
  done
fi 
done
fi
wait
