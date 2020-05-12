#!/bin/sh
export AUDIODEV=hw:1,0
export AUDIODRIVER=alsa
#rec rec.wav silence 1 0.1 3% -1 1.0 3%
#rec -t mp3 xms/rec/rec_`date +'%m-%d-%Y_%H-%M'`.mp3 silence -l 1 0.1 1% -1 2.0 1%
rec -t mp3 xms/rec/rec_`date +'%m-%d-%Y_%H-%M'`.mp3 silence -l 1 0.1 1% -1 5.0 1%
