echo "\t up[date|grade]ing apt-get"
sudo apt-get update
sudo apt-get upgrade -y

echo "\t installing apt-get Basics"
for file in $@; do
	while read -u 10  package; do
		echo
		echo "$package:"
		echo
		sudo apt-get install -y $package
	done 10< $file
done;
