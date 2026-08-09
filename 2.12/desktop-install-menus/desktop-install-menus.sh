for file in usr/share/desktop-directories/Install.directory usr/share/applications/install-firefox.desktop usr/share/pixmaps/firefox.png \
	usr/share/applications/install-flatpak.desktop usr/share/pixmaps/flatpak.png
do
  dirname=$( dirname $file )
  basename=$( basename $file )
  cd /
  install -d $dirname
  wget -q https://opkg.linuxconsole.org/linuxconsole/2.12/$file
  mv $basename $dirname
done

for file in usr/bin/install-flatpak
do
  dirname=$( dirname $file )
  basename=$( basename $file )
  cd /
  install -d $dirname
  wget -q https://opkg.linuxconsole.org/linuxconsole/2.12/$file
  mv $basename $dirname
  chmod +x $dirname/$basename
done
