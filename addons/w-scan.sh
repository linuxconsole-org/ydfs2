#w_scan -ft -c FR -L > $HOME/channels.xspf
[ ! -e $HOME/firmware/dvb-usb-af9015.fw ] &&  install -d $HOME/firmware && wget https://raw.githubusercontent.com/OpenELEC/dvb-firmware/refs/heads/master/firmware/dvb-usb-af9015.fw -o $HOME/firmware/dvb-usb-af9015.fw 
