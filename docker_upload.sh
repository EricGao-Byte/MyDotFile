#!/bin/bash
# rclone docker qbittorrent下载完成自动上传onedrive和google drive
file=$1
if [ -d "$file" ]; then
    /config/rclone copy "$1" gd0:/rclone/"$2" --log-file=/config/rclone.log 
    /config/rclone copy "$1" gd1:/rclone/"$2" --log-file=/config/rclone.log 
    /config/rclone copy "$1" gd2:/rclone/"$2" --log-file=/config/rclone.log 
    #/config/rclone copy "$1" od0:/rclone/"$2" --log-file=/config/rclone.log
    #/config/rclone copy "$1" od1:/rclone/"$2" --log-file=/config/rclone.log
    # /config/rclone copy "$1" od2:/rclone/"$2" --log-file=/config/rclone.log
elif [ -f "$file" ]; then
    /config/rclone copy "$1" gd0:/rclone/ --log-file=/config/rclone.log
    /config/rclone copy "$1" gd1:/rclone/ --log-file=/config/rclone.log
    /config/rclone copy "$1" gd2:/rclone/ --log-file=/config/rclone.log
    #/config/rclone copy "$1" od0:/rclone/ --log-file=/config/rclone.log
    #/config/rclone copy "$1" od1:/rclone/ --log-file=/config/rclone.log
    # /config/rclone copy "$1" od2:/rclone/ --log-file=/config/rclone.log
fi
