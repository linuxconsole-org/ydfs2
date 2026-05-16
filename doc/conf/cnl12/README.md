# Cloud Native Lorient #12 

https://ocgroups.dev/cncf/group/kak8bqr/event/uk3cxa6

## Your Distro From Scratch : Conception et fonctionnement d'une distribution Linux

Avec la migration de postes de travail de Windows vers Linux, comprendre comment fonctionne une distribution devient essentiel. Yann retrace l’histoire de Linux et des grandes distributions, puis présente LinuxConsole, qu’il a créée en 2001, ainsi que l’outil « Your Distro From Scratch » qui permet de la construire. L’occasion de découvrir concrètement comment une distribution Linux est assemblée et fonctionne !

[Présentation](/doc/conf/cnl12/cnl12-1.2.odp)

## Demo

* [ ISO Download link ] (https://ftp.cc.uoc.gr/mirrors/linux/linuxconsole/)

> LinuxConsole 0.4
```
qemu-system-i386 -cdrom linuxconsole0.4-test6mini-fr.iso
```

> LinuxConsole 1.0

```
qemu-system-x86_64 -enable-kvm -cpu qemu64,avx,pdpe1gb,check,enforce -cdrom Linuxconsole-1.0.1.iso
```
