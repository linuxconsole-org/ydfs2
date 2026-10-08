ROOTFS=`mount |grep ext4|cut -d' ' -f1|head -1`

e2label $ROOTFS linuxconsole || exit 1

ISO=linuxconsole.2026-09-22-x86_64.iso
ISOPATH=/media/yann/MultiOS-USB/ISOs
[ ! -e "$ISOPATH/$ISO" ] && echo "You need $ISOPATH/$ISO" && exit 1

install -d /media/iso
mount $ISOPATH/$ISO /media/iso || exit 1

cp /media/iso/isolinux/kernel /boot/vmlinuz-4-linuxconsole || exit 1
cp /media/iso/isolinux/initramfs /boot/initrd.img-4-linuxconsole || exit 1
cp -fR /media/iso/modules/ / || exit 1

update-grub
touch /syslinux.cfg

umount /media/iso
