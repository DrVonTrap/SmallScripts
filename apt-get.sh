aptGetUp () {
	echo "\t up[date|grade]ing apt-get"
	sudo apt-get update
	sudo apt-get upgrade -y
}

aptGetBasics () {
	echo "\t installing apt-get Basics"
	while read p; do
		echo sudo apt-get install -y $p
	done < AptGet/basic.txt
}

aptGetHome () {
	echo "\t installing apt-get Home"
	while read p; do
		echo sudo apt-get install -y $p
	done < AptGet/home.txt
}

aptGetOpenGL () {
	echo "\t installing apt-get OpenGL"
	while read p; do
		echo sudo apt-get install -y $p
	done < AptGet/projects.txt
}

case $1 in
	"-b") aptGetBasics;;
	"-u") aptGetUp;;
	"-h") aptGetHome;;
	"-p") aptGetOpenGL;
esac
