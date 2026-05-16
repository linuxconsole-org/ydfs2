import sys

dico = {
    "pl" : "polska",
    "cs" : "czech",
    "fr" : "french",
    "es" : "spanish",
    "it" : "italian",
    "de" : "german",
    "pt" : "portuguese",
    "jp" : "japanese"
}
try:
    distroname=sys.argv[2]

    if(sys.argv[1]=="grub-boot"):
        for (key,value) in dico.items() :
            print(f"menuentry \"{distroname} : {value} locale {key}\" "+" {")
            print("\tset gfxpayload=keep")
            print(f"\tlinux	/isolinux/kernel quiet liveusb ISOPATH=$iso_path rdinit=/busybox/bin/ash /init-newroot locale={key} ---")
            print("\tinitrd	/isolinux/initramfs")
            print("}")
except:
    print("Argument(s) manquant(s) pour la fonction pyhton")
