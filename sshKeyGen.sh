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
