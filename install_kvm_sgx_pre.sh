sudo apt install fakeroot libelf-dev build-essential libncurses-dev flex bison libssl-dev libfdt-dev libncursesw5-dev pkg-config libgtk-3-dev libspice-server-dev libssh-dev python3 python3-pip
wget "https://github.com/intel/kvm-sgx/archive/refs/tags/sgx-v5.11-rc3.zip"
unzip "sgx-v5.11-rc3.zip"
cd "kvm-sgx-sgx-v5.11-rc3" || exit
make mrproper
#cp "/boot/config-$(uname -r)" .config
make menuconfig
