echo "\t up[date|grade]ing apt-get"
sudo apt-get update
sudo apt-get upgrade -y

echo "\t installing apt-get Basics"
for file in $@; do
	while read package; do
		echo
		echo "$package:"
		echo
		sudo apt-get install -y $package
	done < $file
done;
