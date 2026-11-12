# [ ! -e /lib/firmware/dvb-usb-af9015.fw ] && install -d $HOME/firmware && wget https://raw.githubusercontent.com/OpenELEC/dvb-firmware/refs/heads/master/firmware/dvb-usb-af9015.fw -O $HOME/firmware/dvb-usb-af9015.fw 
# rmmod dvb_usb_af9015
# modprobe dvb_usb_af9015

apt-get install w-scan
[ ! -e $HOME/channels.xspf ] && $HOME/.local/usr/bin/w_scan -ft -c FR -L > $HOME/channels.xspf
vlc $HOME/channels.xspf
