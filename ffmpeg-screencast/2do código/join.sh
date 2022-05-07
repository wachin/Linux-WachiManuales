#!/bin/sh
set -x
 
for f in *.mp4; do echo "file '$f'" >> milista.txt; done && ffmpeg -f concat -safe 0 -i milista.txt -c copy ./recorded-videos/"Rec-$(date '+%Y-%m-%d_%H.%M.%S').mp4" && rm milista.txt && dirname recorded-videos && rm *.mp4
