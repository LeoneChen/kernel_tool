version="5.11.0-rc3"
echo "Removing kernel-$version"
sudo rm /boot/vmlinuz-"${version}"
sudo rm /boot/initrd.img-"${version}"
sudo rm /boot/System.map-"${version}"
sudo rm /boot/config-"${version}"
sudo rm -rf /lib/modules/"${version}"/
sudo update-grub
