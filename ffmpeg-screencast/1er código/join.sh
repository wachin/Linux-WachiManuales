#!/bin/sh
set -x
 
for f in *.mp4; do echo "file '$f'" >> milista.txt; done && ffmpeg -f concat -safe 0 -i milista.txt -c copy ./recorded-videos/output.mp4 && rm milista.txt
