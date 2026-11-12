umount /lib/firmware 

install -d /ydfs/modules/firmwares
mount /media/ydfs/modules/firmware-x86_64.squashfs /ydfs/modules/firmwares/

DBDATADIR=/tmp 
MODULE=firmwares
install -d $DBDATADIR/updir-$MODULE
install -d $DBDATADIR/work-$MODULE
mount -t overlay overlay -oindex=off,lowerdir=/ydfs/modules/$MODULE,upperdir=$DBDATADIR/updir-$MODULE,workdir=$DBDATADIR/work-$MODULE /lib/firmware 

# [ ! -e /lib/firmware/dvb-usb-af9015.fw ] && install -d $HOME/firmware && wget https://raw.githubusercontent.com/OpenELEC/dvb-firmware/refs/heads/master/firmware/dvb-usb-af9015.fw -o $HOME/firmware/dvb-usb-af9015.fw 
