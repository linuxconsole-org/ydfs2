BIOS=../2.12/boot-efi/bios/qemu-ovmf/bios/bios.bin
[ -e 2.12/boot-efi/bios/qemu-ovmf/bios/bios.bin ] && BIOS=2.12/boot-efi/bios/qemu-ovmf/bios/bios.bin

DISK=$HOME

[ -e /media/JEUX/ ] && DISK=/media/JEUX/
[ -e /media/yann/JEUX ] && DISK=/media/yann/JEUX

qemu-img create -f raw $DISK/linuxconsole.image 10G
qemu-system-x86_64 -bios $BIOS -m 2048 -accel kvm -hda $DISK/linuxconsole.image -cdrom $HOME/iso/linuxconsole.iso 
qemu-system-x86_64 -bios $BIOS -m 2048 -accel kvm -hda $DISK/linuxconsole.image

qemu-img create -f raw $DISK/linuxconsole.image 10G
qemu-system-x86_64 -m 2048 -accel kvm -hda $DISK/linuxconsole.image -cdrom $HOME/iso/linuxconsole.iso 
qemu-system-x86_64 -m 2048 -accel kvm -hda $DISK/linuxconsole.image
