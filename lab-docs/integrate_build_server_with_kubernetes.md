install 
update
openjdk-11-jre
maven
docker
chmod 777 /var/run/docker.sock
kubectl
awscli install & configure
connect to cluster

1.Setup kubectl

  curl -O https://s3.us-west-2.amazonaws.com/amazon-eks/1.24.9/2023-01-11/bin/linux/amd64/kubectl
  chmod +x ./kubectl
  mv ./kubectl /usr/local/bin
  kubectl version

2.Make sure you have installed awscli latest version. If it has awscli version 1.X then remove it and install awscli 2.X

 yum remove awscli 
 curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
 unzip awscliv2.zip
 sudo ./aws/install --update

3.Configure awscli to connect with aws account

 aws configure
 Provide access_key, secret_key

4.Download Kubernetes credentials and cluster configuration (.kube/config file) from the cluster

 aws eks update-kubeconfig --region us-east-1 --name valaxy-eks-01
