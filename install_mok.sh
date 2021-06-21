openssl req -config ./mokconfig.cnf -new -x509 -newkey rsa:2048 \
  -nodes -days 36500 -outform DER -keyout "MOK.priv" -out "MOK.der"
openssl x509 -in MOK.der -inform DER -outform PEM -out MOK.pem
sudo mkdir "/MOK"
sudo mv MOK.* /MOK/
sudo mokutil --import "/MOK/MOK.der"
# You need to reboot now.