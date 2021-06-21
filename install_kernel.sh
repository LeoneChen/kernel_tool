cd linux/*/ || exit
#sed -i 's@^CONFIG_SYSTEM_TRUSTED_KEYS.*@CONFIG_SYSTEM_TRUSTED_KEYS="/MOK/MOK.pem"@g' .config
make "-j$(nproc)" 2>error_make.txt || exit
sudo make modules_install || exit
sudo make install || exit
