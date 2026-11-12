#!/bin/bash
set -e

ISO=linuxconsole.2026-11-12-x86_64.iso
install -d /update
mount $ISO /update

[ ! -e /media/ydfs/ydfs.cfg ] && echo "/media/ydfs/ydfs.cfg not found, cannot update" && exit 1

BOOTDIR=""
grep isolinux/kernel /proc/cmdline && BOOTDIR=isolinux

if [ "$BOOTDIR"="isolinux" ]
then
	echo "Update Kernel"
	ls /media | while read MEDIA
	do	
		[ ! -e /media/$MEDIA/isolinux ] && continue
		echo
		echo "Update in $MEDIA"
		for file in kernel initramfs
		do
			[ -e /media/$MEDIA/isolinux/$file.old ] && echo "$file.old exists, skipped" && continue
			echo mv /media/$MEDIA/isolinux/$file /media/$MEDIA/isolinux/$file.old
			mv /media/$MEDIA/isolinux/$file /media/$MEDIA/isolinux/$file.old || break
			echo cp /update/isolinux/$file /media/$MEDIA/isolinux/$file
			cp /update/isolinux/$file /media/$MEDIA/isolinux/$file || break
		done
	done	
fi

echo "Update Modules"
ls /update/modules/ | while read module
do
  [ -e /media/ydfs/modules/old/$module ] && echo "/media/ydfs/modules/old/$module exists, skiped"

  install -d /media/ydfs/modules/new
  install -d /media/ydfs/modules/old

  echo
  echo cp /update/modules/$module /media/ydfs/modules/new/$module 
  cp /update/modules/$module /media/ydfs/modules/new/$module || break

  echo mv /media/ydfs/modules/$module /media/ydfs/modules/old/$module 
  mv /media/ydfs/modules/$module /media/ydfs/modules/old/$module || break

  echo mv /media/ydfs/modules/new/$module /media/ydfs/modules/$module
  mv /media/ydfs/modules/new/$module /media/ydfs/modules/$module || break
done
