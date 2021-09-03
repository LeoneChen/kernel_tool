sudo swapoff /swapfile
sudo rm /swapfile
sudo dd if=/dev/zero of=/swapfile bs=1000000000 count=20
sudo chmod 0600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
