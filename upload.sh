#!/bin/bash
# rclone qbittorrent下载完成自动上传onedrive和google drive
file=$1
if [ -d "$file" ]; then
    /usr/bin/rclone copy "$1" gd0:/rclone/"$2" --log-file=/home/ericdeamn/rclone.log 
    # /usr/bin/rclone copy "$1" gd1:/rclone/"$2" --log-file=/home/ericdeamn/rclone.log 
    # /usr/bin/rclone copy "$1" gd2:/rclone/"$2" --log-file=/home/ericdeamn/rclone.log 
    #/usr/bin/rclone copy "$1" od0:/rclone/"$2" --log-file=/home/ericdeamn/rclone.log
    #/usr/bin/rclone copy "$1" od1:/rclone/"$2" --log-file=/home/ericdeamn/rclone.log
    # /usr/bin/rclone copy "$1" od2:/rclone/"$2" --log-file=/home/ericdeamn/rclone.log
elif [ -f "$file" ]; then
    /usr/bin/rclone copy "$1" gd0:/rclone/ --log-file=/home/ericdeamn/rclone.log
    # /usr/bin/rclone copy "$1" gd1:/rclone/ --log-file=/home/ericdeamn/rclone.log
    # /usr/bin/rclone copy "$1" gd2:/rclone/ --log-file=/home/ericdeamn/rclone.log
    #/usr/bin/rclone copy "$1" od0:/rclone/ --log-file=/home/ericdeamn/rclone.log
    #/usr/bin/rclone copy "$1" od1:/rclone/ --log-file=/home/ericdeamn/rclone.log
    # /usr/bin/rclone copy "$1" od2:/rclone/ --log-file=/home/ericdeamn/rclone.log
fi
