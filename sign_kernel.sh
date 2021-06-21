kernel=$1
sudo sbsign --key /MOK/MOK.priv --cert /MOK/MOK.pem "/boot/vmlinuz-${kernel}"
sudo mv "/boot/vmlinuz-${kernel}" "/home/leone/vmlinuz-${kernel}.back"
sudo mv "/boot/vmlinuz-${kernel}.signed" "/boot/vmlinuz-${kernel}"
sudo update-grub
# reboot now