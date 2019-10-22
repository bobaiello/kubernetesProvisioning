# kubernetesProvisioning
Scripts to help provision a Kubernetes Cluster

Adapted from Kubernetes Essentials on Linux Academy taught by William Boyd

Steps:
1. Fix the vimrc and set the Git global variables
    ./initGit.sh
2. Install Docker
    ./installDocker.sh
3. Install Kubernetes
    ./installKubernetes.sh
4. Configure (bootstrap) Kubernetes
    ./bootstrapKubernetes.sh
5. Install Flannel (networking)
    ./installFlannel.sh

Run some examples:
runExample.sh
