kernel=$1
wget "https://github.com/torvalds/linux/archive/refs/tags/$kernel.zip"
unzip -q "$kernel.zip" -d linux
cd "./linux/$kernel" || exit
make mrproper -s
#cp "/boot/config-$(uname -r)" .config
make menuconfig
# menuconfig now
