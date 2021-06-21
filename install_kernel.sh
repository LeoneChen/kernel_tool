cd linux/*/ || exit
#sed -i 's@^CONFIG_SYSTEM_TRUSTED_KEYS.*@CONFIG_SYSTEM_TRUSTED_KEYS="/MOK/MOK.pem"@g' .config
make "-j$(nproc)" 2>error_make.txt || exit
sudo make INSTALL_MOD_STRIP=1 modules_install || exit
sudo make install || exit
