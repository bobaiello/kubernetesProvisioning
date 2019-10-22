#bootstrapKubernetes.sh

sudo kubeadm init --pod-network-cidr=10.244.0.0/16

echo "setup local kube"
echo "mkdir .kube"
mkdir -p $HOME/.kube

echo "copy in admin.conf"
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

echo "Verify that the cluster is responsive and that Kubectl is working > kubectl version"
kubectl version

echo "kubeadm..."
sudo kubeadm join $some_ip:6443 --token $some_token --discovery-token-ca-cert-hash $some_hash

echo "Verify that all nodes have successfully joined the cluster > kubectl get nodes"
kubectl get nodes
