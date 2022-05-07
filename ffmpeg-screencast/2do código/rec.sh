#!/bin/bash

set -x

MIN=1 && for i in $(seq $(($MIN*4)) -1 1); do echo -n "$i, "; sleep 1; done; echo -e "\n\nBOOOM! Time to start." &&

# Visto en http://www.commandlinefu.com/commands/view/7938/countdown-clock
# Lo modifique para usarlo según mis necesidades, usted le puede bajar el 4 a menos o más segundos


ffmpeg -follow_mouse 50 -show_region 1 -video_size 854x480 -f 30 -f x11grab -i :0.0  \
       -f alsa -ac 2 -i default  \
       -c:v libx264rgb -crf 0 -preset ultrafast \
       "./Out-$(date '+%Y-%m-%d_%H.%M.%S').mp4" 



