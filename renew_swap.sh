if [ -e "/swapfile" ];then
	echo "remove old swapfile"
	sudo swapoff /swapfile || exit
	sudo rm /swapfile || exit
fi
echo "add new swapfile"
sudo dd if=/dev/zero of=/swapfile bs=1000000000 count=20 || exit
sudo chmod 0600 /swapfile || exit
sudo mkswap /swapfile || exit
sudo swapon /swapfile || exit
