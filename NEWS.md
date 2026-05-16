# YDFS - What is new in 2.12 relase

## Kernel 6.18.29, Busybox 1.36.1

> [make_config_ini] (https://github.com/linuxconsole-org/ydfs2/blob/2.12/2.12/scripts/make_config_ini)

## Packages in the core module

> [ more than 1000 pacakages ] (https://github.com/linuxconsole-org/ydfs2/blob/2.12/2.12/packages/list-x86)

> [ Flapak update ] (https://github.com/linuxconsole-org/ydfs2/blob/2.12/2.12/packages/list-updates)

## Kernel config based on Arch linux

> To improve hardware compatilibity

## Kernel module on initramfs

> Previously all kernel modules needed for booting were building in the Kernel
> This will make possible to change initramfs without rebuilding the Kernel

## Pivot-root / Flatpak

> On early booting, pivot root is enabled on tmpfs. This makes possible using Flatpak
> It is possible to enable a loopback file on the USB Key to store Flatpak data

## Auto connect wireless

> By writing a /ydfs/wireless.cfg file on the USB key, Wireless network will be up at statup

Reduce size for firmares modules 

## WSL Build

I works ! (Make fast-iso)

![wslbuild](/img/ydfs-2.12-WSL.png)
