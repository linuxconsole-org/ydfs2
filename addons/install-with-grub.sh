ROOTFS=`mount |grep ext4|cut -d' ' -f1|head -1`

e2label $ROOTFS linuxconsole || exit 1

ISO=linuxconsole.2026-10-17-x86_64.iso
ISOPATH=/home/yann/Téléchargements
[ ! -e "$ISOPATH/$ISO" ] && echo "You need $ISOPATH/$ISO" && exit 1

install -d /media/iso
mount $ISOPATH/$ISO /media/iso || exit 1

#cp /media/iso/isolinux/kernel /boot/vmlinuz-4-linuxconsole || exit 1
#cp /media/iso/isolinux/initramfs /boot/initrd.img-4-linuxconsole || exit 1
cp /media/iso/isolinux/kernel /boot/vmlinuz-5.2026-linuxconsole || exit 1
cp /media/iso/isolinux/initramfs /boot/initrd.img-5.2026-linuxconsole || exit 1
cp -fR /media/iso/modules/ / || exit 1

#update-grub
[ ! -e /boot/grub/grub.cfg.bak ] && [ -e /boot/grub/grub.cfg ] && cp /boot/grub/grub.cfg /boot/grub/grub.cfg.bak
exec grub-mkconfig -o /boot/grub/grub.cfg 
touch /ydfs.cfg

umount /media/iso
