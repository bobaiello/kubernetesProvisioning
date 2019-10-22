#install kubernetes

echo "add GPG key to install kubernetes"
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -

cat << EOF | sudo tee /etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF

echo "update"
sudo apt-get update

echo isntall
sudo apt-get install -y kubelet=1.12.7-00 kubeadm=1.12.7-00 kubectl=1.12.7-00

sudo apt-mark hold kubelet kubeadm kubectl
echo "After installing these components, verify that Kubeadm is working by getting the version info"
echo "kubeadm version..."
kubeadm version
