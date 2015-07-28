aptGetUp () {
	echo "\t up[date|grade]ing apt-get"
	sudo apt-get update
	sudo apt-get upgrade -y
}

aptGetBasics () {
	echo "\t installing apt-get Basics"
	for p in "$(cat AptGet/basic.txt)" ; do sudo apt-get install -y $p; done
}

aptGetHome () {
	echo "\t installing apt-get Home"
	for p in qbittorrent clementine dropbox i3lock xautolock scrot imagemagick screenfetch blender; do sudo apt-get install -y $p; done
}

aptGetOpenGL () {
	echo "\t installing apt-get OpenGL"
	for p in freeglut3-dev libglew-dev libglm-dev; do sudo apt-get install -y $p; done
}

case $1 in
	"-b") aptGetBasics;;
	"-u") aptGetUp;;
	"-h") aptGetHome;;
	"-o") aptGetOpenGL;
esac