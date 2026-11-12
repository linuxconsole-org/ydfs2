
install -d /ydfs/modules/firmwares
mount /media/ydfs/modules/firmware-x86_64.squashfs /ydfs/modules/firmwares/

DBDATADIR=/tmp 
MODULE=firmwares
install -d $DBDATADIR/updir-$MODULE
install -d $DBDATADIR/work-$MODULE
echo mount -t overlay overlay -oindex=off,lowerdir=/ydfs/modules/$MODULE,upperdir=$DBDATADIR/updir-$MODULE,workdir=$DBDATADIR/work-$MODULE /lib/firmware 

#w_scan -ft -c FR -L > $HOME/channels.xspf
