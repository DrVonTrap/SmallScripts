#syncthing:
curl -s https://syncthing.net/release-key.txt | sudo apt-key add -
echo deb http://apt.syncthing.net/ syncthing release | sudo tee /etc/apt/sources.list.d/syncthing-release.list

#llvm
wget -O - http://llvm.org/apt/llvm-snapshot.gpg.key|sudo apt-key add -

