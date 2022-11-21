#!/bin/bash
nohup ./timing_run3.bash "105" &
wait
mv nohup.out dataset_105_27Oct22_multiproc.log
nohup ./timing_run3.bash "106" &
wait
mv nohup.out dataset_106_27Oct22_multiproc.log
nohup ./timing_run3.bash "108" &
wait
mv nohup.out dataset_108_27Oct22_multiproc.log
nohup ./timing_run3.bash "109" &
wait
mv nohup.out dataset_109_27Oct22_multiproc.log

