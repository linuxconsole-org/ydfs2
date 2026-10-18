# YDFS - What is new in 2.12 relase

## Compatible with MultiOS-USB

> You can boot on USB Key with this tool

> Get it from [Github] (https://github.com/Mexit/MultiOS-USB)

## Faster with Ventoy

> Using a [Ventoy release] (https://github.com/ventoy/Ventoy/issues/3745) greater than 1.1.18

## Kernel 6.18.29, Busybox 1.36.1

> [make_config_ini] (https://github.com/linuxconsole-org/ydfs2/blob/2.12/2.12/scripts/make_config_ini)

## Packages in the core module

> [ more than 1000 pacakages ] (https://github.com/linuxconsole-org/ydfs2/blob/2.12/2.12/packages/list-x86)

> [ Flatpak is available ] (https://github.com/linuxconsole-org/ydfs2/blob/2.12/2.12/packages/list-updates)

## Mate Desktop 1.29.0

## Tools

> CUPS 2.4.19

> Flameshot

> Vlc 3.0.24

> Audacity 3.1.3

> Chntpw 

> Gimp 2.10

> Lmms 1.2.2

## Education

> Gcompris 2.4

> Stellarium 1.0

## Games

> Xmoto 0.6.1

> Extremetuxracer 0.8.1

> SuperTuxKart 1.4

> CalcMySky 0.1.0

> Wesnoth 1.16.6

> Astromenace 1.4.1

> SuperTuxKart 1.4

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

## Installation easier in dual boot

Scripts have been successufuly tested on [Linux Mint] (https://raw.githubusercontent.com/linuxconsole-org/ydfs2/refs/heads/2.12/addons/install-with-grub.sh) and [Catchy OS] (https://github.com/linuxconsole-org/ydfs2/blob/2.12/addons/install-with-limine.sh)

## WSL Build


I works ! (Make fast-iso)

![wslbuild](/img/ydfs-2.12-WSL.png)
