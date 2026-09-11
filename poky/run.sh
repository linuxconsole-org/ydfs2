docker build -t linuxconsole2027-yocto .
install -d $HOME/linuxconsole2027-yocto
docker run --rm -it -v $HOME/linuxconsole2027-yocto:/home/linuxconsole2027 linuxconsole2027-yocto # --workdir=/home/linuxconsole2027
