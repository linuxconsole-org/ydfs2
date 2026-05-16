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

distroname="test"

for (key,value) in dico.items() :
    print(f"menuentry \"{distroname} : {value} locale {key}\" "+" {")
    print("\tset gfxpayload=keep")
    print(f"\tlinux	/isolinux/kernel quiet liveusb ISOPATH=$iso_path rdinit=/busybox/bin/ash /init-newroot locale={key} ---")
    print("\tinitrd	/isolinux/initramfs")
    print("}")