sleep 10

dir=/storage/emulated/0/.rclone/

export TMPDIR=$dir/tmp
export HOME=$dir
export PATH=$PATH:/data/data/com.termux/files/usr/bin/

echo "====运行中====" >$dir/log.txt
stop adbd
setprop service.adb.tcp.port 5555
start adbd
adb devices >>$dir/log.txt
adb connect localhost:5555 >>$dir/log.txt
adb devices >>$dir/log.txt
adb -s localhost:5555 shell < $dir/server.sh

# stop adbd
# adb kill-server


