qemu-img create -f raw /media/JEUX/linuxconsole.image 20G
qemu-system-x86_64 -m 2048 -accel kvm -hda /media/JEUX/linuxconsole.image -cdrom $HOME/iso/linuxconsole.iso 
qemu-system-x86_64 -m 2048 -accel kvm -hda /media/JEUX/linuxconsole.image
