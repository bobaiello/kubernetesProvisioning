#installDocker.sh

echo bring down repo keys
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo press enter to install
read x
echo add repo
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

echo "list the versions available (madision is a legacy Debian package manager)"
apt-cache madison docker-ce

echo update
sudo apt-get update
echo install
sudo apt-get install -y docker-ce=18.06.1~ce~3-0~ubuntu

# Pin docker-ce version so that it does not automatically update
sudo apt-mark hold docker-ce
echo You can verify that docker is working by running "docker version":

sudo docker version
