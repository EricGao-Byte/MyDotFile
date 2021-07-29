#/bin/sh
ps -aux | grep HentaiAtHome.jar | grep -v grep | awk '{print $2}' > /root/HentaiAtHome/pid.txt
PID=$(cat /root/HentaiAtHome/pid.txt)
kill -9 $PID
rm -fr /root/HentaiAtHome/pid.txt