# ROOTFS=`grep " / " /proc/mounts |cut -d' ' -f1|head -1`
# e2label $ROOTFS linuxconsole || exit 1
# btrfs filesystem label / linuxconsole || exit 1

ISO=linuxconsole.2026-10-12-x86_64.iso
ISO=linuxconsole.iso
ISOPATH=/home/yann/iso

[ ! -e "$ISOPATH/$ISO" ] && echo "You need $ISOPATH/$ISO" && exit 1

install -d /media/iso
mount $ISOPATH/$ISO /media/iso || exit 1

#install -d /boot/linuxconsole2026
#cp /media/iso/isolinux/kernel /boot/linuxconsole2026/vmlinuz-4-linuxconsole || exit 1
#cp /media/iso/isolinux/initramfs /boot/linuxconsole2026/initrd.img-4-linuxconsole || exit 1

cp -fR /media/iso/modules/ / || exit 1

# update-grub
limine-entry-tool --add-kernel "LinuxConsole-2026" /media/iso/isolinux/initramfs /media/iso/isolinux/kernel
touch /syslinux.cfg

umount /media/iso
