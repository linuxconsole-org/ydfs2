import sys
import os

dico = {
    "fr" : "French",
    "es" : "Spanish",
    "de" : "German",
    "pl" : "Polska",
    "it" : "Italian",
    "cs" : "Czech",
    "pt" : "Portuguese",
    "jp" : "Japanese"
}

try:

    option=sys.argv[1]

    if(option == "grub-boot"):
        print(option)
        for (key,value) in dico.items() :
            print(f"menuentry \"{os.environ['DISTRONAME']} : {value} locale {key}\" "+" {")
            print("\tset gfxpayload=keep")
            print(f"\tlinux	/isolinux/kernel quiet liveusb ISOPATH=$iso_path locale={key} ---")
            print("\tinitrd	/isolinux/initramfs")
            print("}")

    if(option == "isolinux-boot"):
        for (key,value) in dico.items() :
            print(f"LABEL Auto detect boot media ({value} locale)")
            print(f"KERNEL {os.environ['KERNEL']}")
            print(f"APPEND {os.environ['COMMON']} locale={key}")

#except:
#    print(f"Arg needed")

except Exception as e:
    print(f"Une erreur inattendue est survenue : {e}")
