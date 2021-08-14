#!/bin/bash
# rclone qbittorrent下载完成自动上传onedrive和google drive
file=$1
chat_id="" #用户id，通过 @userinfobot 获取
bot_api="" #自己申请的bot的API
if [ -d "$file" ]; then
    /usr/bin/rclone copy "$1" gd0:/rclone/new/"$2" --log-file=/home/ericdeamn/rclone.log 
    curl -g -i -X GET "https://api.telegram.org/bot${bot_api}/sendMessage?chat_id=${chat_id}&text=*$2*已上传到gd"
    /usr/bin/rclone copy "$1" gd1:/rclone/new/"$2" --log-file=/home/ericdeamn/rclone.log 
    /usr/bin/rclone copy "$1" gd2:/rclone/new/"$2" --log-file=/home/ericdeamn/rclone.log 
elif [ -f "$file" ]; then
    /usr/bin/rclone copy "$1" gd0:/rclone/new/ --log-file=/home/ericdeamn/rclone.log
    curl -g -i -X GET "https://api.telegram.org/bot${bot_api}/sendMessage?chat_id=${chat_id}&text=*$2*已上传到gd"
    /usr/bin/rclone copy "$1" gd1:/rclone/new/ --log-file=/home/ericdeamn/rclone.log
    /usr/bin/rclone copy "$1" gd2:/rclone/new/ --log-file=/home/ericdeamn/rclone.log
fi
