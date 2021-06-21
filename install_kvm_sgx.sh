cd "kvm-sgx-sgx-v5.11-rc3" || exit
sed -i 's@^CONFIG_SYSTEM_TRUSTED_KEYS.*@CONFIG_SYSTEM_TRUSTED_KEYS=""@g' .config
cat ".config" | grep "CONFIG_SYSTEM_TRUSTED_KEYS"
make "-j$(nproc)" 2>error_make.txt || exit
sudo make modules_install || exit
sudo make install || exit
