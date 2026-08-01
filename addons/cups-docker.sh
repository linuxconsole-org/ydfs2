wget https://github.com/yledoare/docker-cups/archive/refs/heads/main.zip
unzip main.zip
cd docker-cups-main
docker build --tag linuxconsole-cups .
docker run -d -p 631:631 -v /var/run/dbus:/var/run/dbus -v /dev/bus/usb:/dev/bus --name cupsd linuxconsole-cups
