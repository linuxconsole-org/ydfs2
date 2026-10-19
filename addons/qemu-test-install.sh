qemu-img create -f raw linuxconsole.image 10G
qemu-system-x86_64 -m 2048 -accel kvm -hda linuxconsole.image -cdrom $HOME/iso/linuxconsole.iso 
qemu-system-x86_64 -m 2048 -accel kvm -hda linuxconsole.image

qemu-img create -f raw linuxconsole.image 10G
qemu-system-x86_64 -bios 2.12/boot-efi/bios/qemu-ovmf/bios/bios.bin -m 2048 -accel kvm -hda linuxconsole.image -cdrom $HOME/iso/linuxconsole.iso 
qemu-system-x86_64 -bios 2.12/boot-efi/bios/qemu-ovmf/bios/bios.bin -m 2048 -accel kvm -hda linuxconsole.image
