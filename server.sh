ui_print "====运行中====" >$MODPATH/module.log

export PATH=$PATH:/$MODPATH/bin/
rclone mount WebDav:/ /storage/emulated/0/WebDav/ --cache-dir $MODPATH/tmp --allow-other --vfs-cache-mode writes --allow-non-empty --config $MODPATH/rclone.conf --daemon

ui_print "已成功挂载！" >>$MODPATH/module.log