su
PATH=$PATH:/data/data/com.termux/files/usr/bin/
rclone mount WebDav:/ /storage/emulated/0/WebDav/ --cache-dir /storage/emulated/0/.tmp --allow-other --vfs-cache-mode writes --allow-non-empty --config /storage/emulated/0/.rclone/rclone.conf --daemon

echo "已成功挂载！" >>/storage/emulated/0/.rclone/log.txt
