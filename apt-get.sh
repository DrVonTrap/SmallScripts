sudo apt-get update
sudo apt-get upgrade -y
for i in package1 package2 package3; do sudo apt-get install -y $i; done

#essentials
for p in vim zsh byobu make cmake git firefox g++ gcc curl gparted feh htop nload nethogs pip; do sudo apt-get install -y $p; done
#home PC
for p in qbittorrent clementine dropbox i3lock xautolock scrot convert composite; do sudo apt-get install -y $p; done
#OpenGL
for p in freeglut3-dev libglew-dev libglm-dev; do sudo apt-get install -u $p; done
