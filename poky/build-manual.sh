python3 -m venv --clear ./bitbake-setup-venv
. ./bitbake-setup-venv/bin/activate
pip install bitbake-setup
git clone https://git.openembedded.org/bitbake ./bitbake
./bitbake/bin/bitbake-setup init
bitbake-setup init
bitbake-config-build enable-fragment distro/poky-altcfg
bitbake-config-build list-fragments
bitbake core-image-sato
