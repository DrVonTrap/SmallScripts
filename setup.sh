#sh ./apt-get.sh
#sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

cd ~
for f in $(find SmallScripts/DotFiles/)
do
	if [ "$f" = "SmallScripts/DotFiles/" ]
	then
		continue;
	fi
	if [ -f $f ];
	then
		l=$(echo $f | sed -e 's/SmallScripts\/DotFiles\///g');
		mv $l $l.old;
		ln -r -s ./$f $l;
		echo "SymLinked $l";
	fi
done
