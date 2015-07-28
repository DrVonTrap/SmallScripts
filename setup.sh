aptGetUp () {
	echo "up[date|grade]ing apt-get"
	./apt-get.sh -u
}

aptGetBasics () {
	echo "aptGetBasics"
	./apt-get.sh -b
}

aptGetHome () {
	echo "aptGetHome"
	./apt-get.sh -h
}

aptGetOpenGL () {
	echo "aptGetOpenGL"
	./apt-get.sh -o
}

installOMZ () {
	echo "installOMZ"
	sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
}

symlinkDotfiles () {
	echo "symlinkDotfiles"
	./symLink.sh
}


echo "Setup options:"
echo "	0) apt-get update/upgrade"
echo "	1) apt-get basics"
echo "	2) apt-get for home setup"
echo "	3) apt-get for OpenGL"
echo "	4) install oh-my-zsh"
echo "	5) symlink dotfiles"

read -p "which options would you like to perform?" input
echo "$input";

case $input in
	0) aptGetUp;;
	1) aptGetBasics;;
	2) aptGetHome;;
	3) aptGetOpenGL;;
	4) installOMZ;;
	5) symlinkDotfiles;;
esac

