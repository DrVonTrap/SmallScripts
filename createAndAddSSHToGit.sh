ssh-keygen -t rsa -b 4096 -C "drvontrap@gmail.com"
ssh-add ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub
firefox https://github.com/settings/ssh
