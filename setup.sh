sshKeyGen () {
	ssh-keygen -t rsa -b 4096
	ssh-add ~/.ssh/id_rsa
	echo ""
	echo ""
	RSAKEY="$(cat ~/.ssh/id_rsa.pub)"
	echo $RSAKEY
	echo ""
	echo ""
	firefox "https://github.com/settings/ssh"
	read -p "Copy this key whereever it needs to go, then press enter to continue the install process" temp
}

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

aptGetAndGitPullProjects () {
	echo "aptGetAndGitPullProjects"
	./apt-get.sh -p
	pushd ~/Documents
		git pull git@github.com:DrVonTrap/CityProject.git
		git pull git@github.com:DrVonTrap/MusicRipper.git
	popd
}

installOMZ () {
	echo "installOMZ"
	sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
}

symlinkDotfiles () {
	echo "symlinkDotfiles"
	./symLink.sh
}

installPaper () {
	echo "install paper GTK Theme"
	./installTheme.sh
}

installI3Lock () {
	scriptDir=$PWD;
	cd /usr/local/bin
		sudo ln -sfn $scriptDir/i3lock/lock lock
}

echo "Setup options:"
echo "	0) create ssh keys"
echo "	1) apt-get update/upgrade"
echo "	2) apt-get basics"
echo "	3) apt-get for home setup"
echo "	4) apt-get and git pull for your projects"
echo "	5) install oh-my-zsh"
echo "	6) symlink dotfiles"
echo "	7) install paper GTK theme"	
echo "	8) install custom i3lock"


read -p "which options would you like to perform? " input
echo "$input";

case $input in
	0) sshKeyGen;;
	1) aptGetUp;;
	2) aptGetBasics;;
	3) aptGetHome;;
	4) aptGetAndGitPullProjects;;
	5) installOMZ;;
	6) symlinkDotfiles;;
	7) installTheme;;
	8) installI3Lock;;

esac

