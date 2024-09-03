passwd x
passwd root
exit
systemctl status ssh.service 
systemctl restart ssh.service 
sed -i   's/^#PermitRootLogin.*/PermitRootLogin yes/'   /etc/ssh/sshd_config
systemctl restart ssh.service 
systemctl status ssh.service 
vi /etc/resolv.conf 
hostnamectl set-hostname k8-worker1
vi /etc/hosts
vi /etc/resolv.conf 
vi /etc/hosts
vi /etc/hosts
exit
ls -la
exit
cd /usr/share/mesos/mesos-1.8.1/build/
../configure 
ls -la
make
cd ..
ls -la
make
ls -la
python -V
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update
sudo apt-get install python2.7
sudo apt-get install python2.4
sudo apt-get install python2.4-fuse
python -V
sudo apt-get install python2.7
sudo update-alternatives --install /usr/bin/python python 
sudo update-alternatives --install /usr/bin/python
cat /etc/profile
cat /etc/bash.bashrc 
cat /etc/profile
exit
ls -la
sudo apt-get install -y tar wget git
sudo apt-get install -y openjdk-8-jdk
sudo apt-get install -y autoconf libtool
sudo apt-get update
sudo apt-get -y install build-essential python-dev python-six python-virtualenv     libcurl4-nss-dev libsasl2-dev libsasl2-modules maven libapr1-dev libsvn-dev     zlib1g-dev iputils-ping
sudo apt-get -y install build-essential python-dev-is-python3  libsasl2-dev libsasl2-modules maven libapr1-dev libsvn-dev     zlib1g-dev iputils-ping
cd /usr/share/
mkdir mesos
cd mesos/
ls -la
wget http://www.apache.org/dist/mesos/1.7.2/mesos-1.7.2.tar.gz
wget http://www.apache.org/dist/mesos/1.8.1/mesos-1.8.1.tar.gz
tar -zxf mesos-1.8.1.tar.gz 
cd mesos-1.8.1/
ls -la
mmkdir build
mkdir build
cd build/
ls -la
../configure 
make
cd ..
make
ls -la
cd build/
ls -la
make
cd ..
ls -la
./config
./configure 
sudo apt-get update
sudo apt-get -y install libcurl4-nss-dev
cat /etc/os-release 
sudo apt-get install libcurl4-openssl-dev --fix-broken
apt-get update
cd build/
../configure 
ls -la
cd .libs/
ls -la
sudo apt-get update
sudo apt-get install python2.7
sudo apt-get install python2
sudo apt-get install python
sudo apt-get install python-is-python3
sudo apt-get install python-is-python2
sudo apt-get update
sudo apt-get install python
sudo apt-get install python2
sudo update-alternatives --config python
wget https://www.python.org/ftp/python/2.7.9/Python-2.7.9.tgz
sudo tar xzf Python-2.7.9.tgz
cd Python-2.7.9
cd ..
python version
python --version
python --V
python -V
ls -la
rm -rf .
ls -a
rm -rf Python-2.7.9
rm -rf Python-2.7.9.tgz 
cd ../../..
sudo apt update && sudo apt upgrade
sudo apt install -y build-essential checkinstall libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev
wget https://www.python.org/ftp/python/2.7.18/Python-2.7.18.tgz
tar -xvf Python-2.7.18.tgz
cd Python-2.7.18
./configure --enable-optimizations
make
python -V
make install
python -V
./configure --enable-optimizations
make
mkdir apache-mesos
cd apache-mesos/
ll
apt update
apt upgrade -y
sudo apt install -y openjdk-8-jdk-headless autoconf automake libtool     build-essential python3-pip python3-setuptools python3-wheel zlib1g-dev     libssl-dev libsasl2-dev libcurl4-openssl-dev libapr1-dev libsvn-dev
apt install -y zookeeperd
git clone https://github.com/apache/mesos.git
cd mesos
./bootstrap
mkdir build
cd build
../configure
make -j $(nproc)
readlink -f /usr/bin/java | sed "s:bin/java::"
export JAVA_HOME=$(readlink -f /usr/lib/jvm/java-21-openjdk-amd64/ | sed "s:bin/java::")
cd ~/apache-mesos/mesos/build
../configure
make -j $(nproc)
apt update
apt install -y openjdk-8-jdk
export JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:bin/java::")
cd ~/apache-mesos/mesos/build
../configure
sudo apt update
sudo apt install -y openjdk-8-jdk autoconf automake libtool     build-essential python3-pip python3-setuptools python3-wheel zlib1g-dev     libssl-dev libsasl2-dev libcurl4-openssl-dev libapr1-dev libsvn-dev
sudo apt install -y zookeeperd
git clone https://github.com/apache/mesos.git
cd mesos
./bootstrap
mkdir build
cd build
export JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:bin/java::")
../configure
sudo apt update
sudo apt install -y openjdk-8-jdk
sudo apt install -y libjna-java
ls /usr/lib/jvm/java-8-openjdk-amd64/include/
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
cd ~/apache-mesos/mesos/build
../configure
make -j $(nproc)
cd ~/apache-mesos/mesos
find . -type f -name Makefile.in -exec sed -i 's/-Werror//g' {} +
vi fix_curl_deprecation.patch
patch -p1 < fix_curl_deprecation.patch
vi 3rdparty/stout/include/stout/net.hpp
cd ~/apache-mesos/mesos/build
make clean
../configure
make -j $(nproc)
sudo make install
echo "your-hostname-or-ip" | sudo tee /etc/mesos-master/hostname
echo "your-hostname-or-ip" | sudo tee /etc/mesos-slave/hostname
sudo service mesos-master start
sudo service mesos-slave start
ip r
hostname
sudo mkdir -p /etc/mesos-master
sudo mkdir -p /etc/mesos-slave
echo "k8-worker1" | sudo tee /etc/mesos-master/hostname
echo "k8-worker1" | sudo tee /etc/mesos-slave/hostname
vi /etc/systemd/system/mesos-master.service
vi /etc/systemd/system/mesos-slave.service
sudo systemctl daemon-reload
sudo systemctl enable mesos-master
sudo systemctl enable mesos-slave
sudo systemctl start mesos-master
sudo systemctl start mesos-slave
cd apache-mesos/mesos/build/
ll
sudo systemctl status mesos-master
sudo systemctl status mesos-slave
which mesos-master
which mesos-agent
sudo /usr/local/sbin/mesos-master --ip=172.16.106.238 --work_dir=/var/lib/mesos
find /usr/local -name libmesos-1.12.0.so
export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH
sudo /usr/local/sbin/mesos-master --ip=172.16.106.238 --work_dir=/var/lib/mesos
ls -l /usr/local/lib/libmesos-1.12.0.so
export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH
echo $LD_LIBRARY_PATH
ldconfig -p | grep libmesos
echo "/usr/local/lib" | sudo tee /etc/ld.so.conf.d/mesos.conf
sudo ldconfig
ldconfig -p | grep libmesos
sudo /usr/local/sbin/mesos-master --ip=172.16.106.238 --work_dir=/var/lib/mesos
cd /apache-mesos/mesos/build
cd apache-mesos/mesos/build/
sudo /usr/local/sbin/mesos-master --ip=172.16.106.238 --work_dir=/var/lib/mesos
lsof -i :5050
kill -9 280175
hostnamectl set-hostname k8-worker1
vi /etc/netplan/50
vi /etc/netplan/50-cloud-init.yaml 
netplan apply
passwd root
passwd chaitali
cd apache-mesos/mesos/build
lsof -i :5050
kill -9 280357
/usr/local/sbin/mesos-master --ip=172.16.106.238 --work_dir=/var/lib/mesos
systemctl start mesos-agent
vi /etc/systemd/system/mesos-agent.service
systemctl daemon-reload
systemctl start mesos-agent
systemctl status mesos-agent
systemctl enable mesos-agent
journalctl -u mesos-agent -xe
vi /etc/systemd/system/mesos-agent.service
systemctl daemon-reload
systemctl restart mesos-agent
systemctl status mesos-agent
vi /etc/systemd/system/mesos-agent.service
systemctl daemon-reload
systemctl restart mesos-agent
systemctl status mesos-agent
journalctl -u mesos-agent -xe
systemctl --version
systemctl show --property=ControlGroup /proc/self
status systemd-cgroups.service
systemctl status systemd-cgroups.service
systemctl show --property=ControlGroup /proc/self
vi /sys/fs/cgroup
ls /sys/fs/cgroup
vi /etc/systemd/system/mesos-agent.service
systemctl daemon-reload
systemctl restart mesos-agent.service
systemctl status mesos-agent.service
cat /etc/systemd/system/mesos-agent.service
vi /etc/systemd/system/mesos-agent.service
systemctl daemon-reload
systemctl restart mesos-agent.service
systemctl status mesos-agent.service
vi /etc/systemd/system/mesos-agent.service
journalctl -u mesos-agent.service -xe
systemctl --version
ls /sys/fs/cgroup/systemd
mount | grep cgroup
vi /etc/default/grub
update-grub
reboot
cd apache-mesos/mesos/build/
ll
make install
sudo rm -f /usr/local/sbin/mesos-slave
make install
sudo rm -f /usr/local/etc/mesos/mesos-slave-env.sh.template
make install
lsblk
df -hT
free
free -h
lsblk
df -hT
[200~lsblk~
lsblk
parted /dev/sda resizepart 3 100%
vi /etc/fstab
blkid
reboot
df -ht
df -hT
lsblk
lvdisplay /dev/ubuntu-vg/ubuntu-lv
lvextend -l +100%FREE /dev/ubuntu-vg/ubuntu-lv
resize2fs /dev/ubuntu-vg/ubuntu-lv
df -hT
cd apache-mesos/mesos/build/
ll
make install
pip install --upgrade pip
rm -f /usr/local/sbin/mesos-slave
make install
ip r
./bin/mesos-master.sh --ip=172.16.106.238 --work_dir=/var/lib/mesos
telnet 172.16.106.238 5050
./src/examples/java/test-framework 172.16.106.238:5050
cd /root/apache-mesos/mesos/build/src/examples/
ll
cd /root/apache-mesos/mesos/build/src/
ls -l
cd /root/apache-mesos/mesos/
make clean
cd /root/apache-mesos/mesos/build/
cd /root/apache-mesos/mesos/
make
find /root/apache-mesos/mesos/src/examples/java -name "*.java"
javac -d /root/apache-mesos/mesos/build/src /root/apache-mesos/mesos/src/examples/java/*.java
jar cf /root/apache-mesos/mesos/build/src/examples.jar -C /root/apache-mesos/mesos/build/src .
# Example assuming protobuf-java.jar and mesos.jar are in /path/to/libs/
javac -cp /path/to/libs/protobuf-java.jar:/path/to/libs/mesos.jar       -d /root/apache-mesos/mesos/build/src       /root/apache-mesos/mesos/src/examples/java/*.java
pwd
ll
cd /etc/mesos-slave/
ll
echo "172.16.106.239" | sudo tee /etc/mesos-slave/ip
echo "k8-worker2" | sudo tee /etc/mesos-slave/hostname
echo "zk://172.16.106.238:2181/mesos" | sudo tee /etc/mesos-slave/master
cat /etc/mesos-slave/ip
cat /etc/mesos-slave/hostname
cat /etc/mesos-slave/master
sudo mesos-agent --master=zk://172.16.106.238:2181/mesos --ip=172.16.106.239 --hostname=k8-worker2 &
mount | grep cgroup
sudo mesos-agent --master=zk://172.16.106.238:2181/mesos --ip=172.16.106.239 --hostname=k8-worker2 --cgroups_hierarchy=/sys/fs/cgroup/unified &
vi /etc/default/grub
update-grub
reboot
uptime
sudo mesos-agent --master=zk://172.16.106.238:2181/mesos --ip=172.16.106.239 --hostname=k8-worker2 &
mkdir -p /etc/mesos-agent
vi /etc/mesos-agent
echo "zk://172.16.106.238:2181/mesos" | sudo tee /etc/mesos-agent/master
echo "172.16.106.239" | sudo tee /etc/mesos-agent/ip
echo "k8-worker2" | sudo tee /etc/mesos-agent/hostname
echo "cgroups/cpu,cgroups/memory,cgroups/devices,cgroups/blkio" | sudo tee /etc/mesos-agent/isolation
echo "/sys/fs/cgroup" | sudo tee /etc/mesos-agent/cgroups_hierarchy
sudo mesos-agent --master=zk://172.16.106.238:2181/mesos --ip=172.16.106.239 --hostname=k8-worker2 --cgroups_hierarchy=/sys/fs/cgroup --isolation=cgroups/cpu,cgroups/memory,cgroups/devices,cgroups/blkio &
umount /sys/fs/cgroup/unified
vi /etc/mesos-slave/flags
cat /etc/os-release 
ls /var/log/mesos
sudo tail -f /var/log/mesos/mesos-master.INFO
grep "log_dir" /etc/mesos/* /etc/mesos-master/* /etc/mesos-slave/*
systemctl status mesos-agent.service
ls /etc/systemd/system/ | grep mesos
sudo cat /etc/systemd/system/mesos-master.service
cat /etc/systemd/system/mesos-agent.service
cd apache-mesos/mesos/
cat /etc/systemd/system/mesos-master.service | grep EnvironmentFile
cat /etc/systemd/system/mesos-agent.service | grep EnvironmentFile
journalctl -u mesos-master
history
ps -ef | grep mesos
df -hT
ls
cd /var/log/
grep -nsr mesos .
systemctl status mesos-agent.service
systemctl status mesos-slave.service
history | grep mesos
ps -ef | grep mesos
kill -9 949
ps -ef | grep mesos
kill -9 949
ps -ef | grep mesos
ps -ef | grep 2244
ps -ef | grep mesos
kill -9 2244
ps -ef | grep mesos
systemctl status mesos-slave.service
systemctl status mesos-agent.service
systemctl stop mesos-agent.service
systemctl status mesos-agent.service
systemctl desable --now mesos-agent.service
systemctl disable --now mesos-agent.service
systemctl status mesos-agent.service
ps -ef | grep mesos
kill -9 2273
ps -ef | grep mesos
kill -9 2364
ps -ef | grep mesos
history | grep mesos-master
systemctl status mesos-master
systemctl stop mesos-master
./bin/mesos-master.sh --ip=172.16.106.238 --work_dir=/var/lib/mesos
cd
ls
cd apache-mesos/
ls
cd mesos/
ls
cd build/
ll
./bin/mesos-master.sh --ip=172.16.106.238 --work_dir=/var/lib/mesos
./bin/mesos-master.sh --logging_level ERROR
./bin/mesos-master.sh --ip=172.16.106.238 --work_dir=/var/lib/mesos 
systemctl status mesos-master
systemctl start mesos-master
hostname -i
ls
df -hT
free  -h
lscpu 
df -hTcd
cd
top -i
free -h
cd /var/log/
cd /
cd
ls
cd apache-mesos/
ls
cd mesos/
ls
cd bin/
ls
cd ..
grep log .
grep -nsr log .
grep -nsr '*.log' .
ls /var/log/zookeeper/
cd /var/log/zookeeper/
ls
ls -l
cd ..
journalctl -xe
systemctl status mesos-master
cd /var/lib/mesos
ls
cd replicated_log/
ls
ls -la
tail LOG
tail -f *
ls -la
tail -f *.log LOG
ufw statsu
ufw status
sestatus
iptables -nL
cd
cd /var/lib/mesos/replicated_log
tail -f *.log LOG
netstat -tunlp | grep 2181
ss
ss | grep 2181
hostnamectl set-hostname k8-master
passwd govadmin
exit
ip r
mkdir k8-setup
cd k8-setup/
ll
vi k8-install.sh
cat k8-install.sh 
sh k8-install.sh 
ll
cd k8-setup/
ll
cat k8-install.sh 
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
kubectl apply -f https://github.com/weaveworks/weave/releases/download/v2.8.1/weave-daemonset-k8s-1.11.yaml
kubectl get pods -A
kubectl get nodes
kubectl token --help
kubeadm token --help
kubeadm token 
kubeadm joint
kubectl joint
kubectl join
kubeadm join
kubeadm join --help
kubeadm join --token
kubeadm token create --print-join-command
kubectl get nodes
kubeadm upgrade
kubeadm upgrade plan
kubeadm upgrade apply --dry-run
kubeadm version
kubeadm upgrade plan
kubeadm upgrade apply v1.30.3
kubeadm version
kubeadm upgrade apply v1.29.7
kubeadm upgrade apply v1.30.0
kubeadm upgrade apply v1.29.x
kubeadm upgrade apply v1.30.0
kubeadm upgrade plan
apt-cache madison kubeadm
sudo apt-get update
apt-cache madison kubeadm
sudo kubeadm upgrade apply v1.29.7-1.1
sudo kubeadm upgrade apply v1.29.7
apt-get install -y kubelet=v1.29.7 kubectl=v1.29.7
kubelet version
kubelet --version
systemctl restart kubelet
kubectl get nodes
kubeadm upgrade node
kubeadm upgrade plan
sudo kubeadm upgrade apply v1.30.3
kubectl get nodes
kubectl drain k8-worker1 --ignore-daemonsets
kubectl get nodes
kubectl uncordon k8-worker1 --ignore-daemonsets
kubectl uncordon k8-worker1
kubectl get nodes
wget https://get.helm.sh/helm-v3.9.3-linux-amd64.tar.gz
tar xvf helm-v3.9.3-linux-amd64.tar.gz
cp linux-amd64/helm /usr/local/bin/
helm version
helm repo add gitlab https://charts.gitlab.io
helm repo update
helm upgrade --install k8-test gitlab/gitlab-agent     --namespace gitlab-agent-k8-test     --create-namespace     --set image.tag=v17.2.1     --set config.token=glagent-MWNW9u_fAh6f-iFgD_zz6H9UCdCeyhPe5NX5Bwz3eyQuZDx4Jg     --set config.kasAddress=wss://gitlab.esds-test.com/-/kubernetes-agent/
grep -r .kube
ll
cd k8-setup/
cat k8-install.sh 
cat $HOME/.kube/config
echo $HOME
cd /root/.kube/
ll
pwd
curl -L "https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.rpm.sh" | sudo bash
cd ..
curl -L "https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.deb.sh" | sudo bash
apt-get install gitlab-runner
gitlab-runner register  --url https://gitlab.esds-test.com  --token glrt-mTmNQUzFcH46S_ETDFsz
vi /etc/hosts
gitlab-runner register  --url https://gitlab.esds-test.com  --token glrt-mTmNQUzFcH46S_ETDFsz
ip r
gitlab-runner register  --url https://gitlab.esds-test.com  --token glrt-mTmNQUzFcH46S_ETDFsz
cat /etc/gitlab-runner/config.toml
vi /etc/gitlab-runner/config.toml
systemctl restart gitlab-runner.service 
systemctl status gitlab-runner.service 
vi /etc/gitlab-runner/config.toml
systemctl restart gitlab-runner.service 
helm upgrade --install k8-test gitlab/gitlab-agent     --namespace gitlab-agent-k8-test     --create-namespace     --set image.tag=v17.2.1     --set config.token=glagent-Ex-ZcceyEHefAL9Z7xdPTVoZR15KzYHbmD-UP4Vzq98Xv1rYng     --set config.kasAddress=wss://gitlab.esds-test.com/-/kubernetes-agent/
cat /etc/gitlab-runner/config.toml 
kubectl create ns gitlab
mkdir gitlab-executer
helm install gitlab-runner gitlab/gitlab-runner -f values.yaml --namespace gitlab
helm show values gitlab/gitlab > values.yaml
mv values.yaml gitlab-executer/
cd gitlab-executer/
ll
cat values.yaml 
helm install gitlab-runner gitlab/gitlab-runner -f values.yaml --namespace gitlab
kubectl get all -n gitlab
vi secret-gitlab.yml
kubectl apply -f secret-gitlab.yml 
vi secret-gitlab.yml
kubectl apply -f secret-gitlab.yml 
ll
systemctl stop gitlab-runner.service 
systemctl disable gitlab-runner.service 
ll
history
helm uninstall k8-test gitlab/gitlab-agent     --namespace gitlab-agent-k8-test 
helm version
helm repo update gitlab
helm search repo -l gitlab/gitlab-runner
cd gitlab-executer/
vi values.yaml 
helm upgrade gitlab-runner gitlab/gitlab-runner -f values.yaml --namespace gitlab
vi values.yaml 
helm upgrade gitlab-runner gitlab/gitlab-runner -f values.yaml --namespace gitlab
vi /etc/gitlab-runner/config.toml 
systemctl enable  gitlab-runner.service 
systemctl start gitlab-runner.service 
systemctl status gitlab-runner.service 
gitlab-runner run
vi /etc/gitlab-runner/config.toml 
systemctl start gitlab-runner.service 
gitlab-runner run
gitlab-runner register  --url https://gitlab.esds-test.com  --token glrt-yXpQvpYs4pzD7ktNWw5X
gitlab-runner run
vi /etc/gitlab-runner/config.toml 
systemctl restart gitlab-runner.service 
cd gitlab-executer/
cat values.yaml 
rm -rf values.yaml 
history
ll
systemctl status gitlab-runner.service 
systemctl stop gitlab-runner.service 
systemctl disbale gitlab-runner.service 
systemctl disabale gitlab-runner.service 
systemctl disable gitlab-runner.service 
helm repo add gitlab https://charts.gitlab.io
helm repo update gitlab
kubectl create namespace gitlab
vi values.yml
helm install gitlab-runner gitlab/gitlab-runner -f values.yaml --namespace gitlab
ll
helm install gitlab-runner gitlab/gitlab-runner -f values.yaml --namespace gitlab
helm install gitlab-runner gitlab/gitlab-runner -f values.yml --namespace gitlab
helm uninstall gitlab-runner
helm uninstall gitlab-runner gitlab/gitlab-runner -f values.yaml --namespace gitlab
helm uninstall gitlab-runner gitlab/gitlab-runner
helm uninstall gitlab-runner gitlab/gitlab-runner -n gotlab
helm uninstall gitlab-runner gitlab/gitlab-runner -n gitlab
helm install gitlab-runner gitlab/gitlab-runner -f values.yml --namespace gitlab
vi values.yml
cat values.yml 
vi values.yml 
helm upgrade gitlab-runner gitlab/gitlab-runner -f values.yaml --namespace gitlab
helm upgrade gitlab-runner gitlab/gitlab-runner -f values.yml --namespace gitlab
kubectl get all -n gitlab
kubectl describe pod/gitlab-runner-5b964f98f8-p225v -n gitlab
kubectl get all -n gitlab
vi values.yml 
helm upgrade gitlab-runner gitlab/gitlab-runner -f values.yml --namespace gitlab
kubectl get all -n gitlab
watch kubectl get all -n gitlab
vi values.yml 
cd ..
ll
mkdir smaple-project
cd smaple-project/
vi test-deployment.yaml
kubectl apply -f test-deployment.yaml 
kubectl get pods -A
vi test-deployment.yaml
kubectl apply -f test-deployment.yaml 
kubectl get pods -A
mkdir -p /etc/docker/certs.d/harbor.esds-test.com/
cp /etc/ssl/certs/harbor.esds-test.com.* /etc/docker/certs.d/harbor.esds-test.com/
docker login harbor.esds-test.com
apt  install docker.io 
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
apt-get update
sudo apt-get install -y docker-ce docker-ce-cli
sudo systemctl start docker
sudo systemctl enable docker
docker --version
docker login harbor.esds-test.com
cd /etc/docker/certs.d/
ll
cd harbor.esds-test.com/
ll
update-ca-certificates 
docker login harbor.esds-test.com
docker login harbor.esds-test.com:443
vi /etc/hosts
docker login harbor.esds-test.com:443
cd ..
mv harbor.esds-test.com/ harbor.esds-test.com:443
docker login harbor.esds-test.com:443
ll
cd harbor.esds-test.com\:443/
mv harbor.esds-test.com.crt harbor.esds-test.com:443.crt
mv harbor.esds-test.com.key harbor.esds-test.com:443.key
docker login harbor.esds-test.com:443
mv harbor.esds-test.com:443.key harbor.esds-test.com.key
mv harbor.esds-test.com:443.crt harbor.esds-test.com.crt
ll
docker login harbor.esds-test.com:443
docker login https://harbor.esds-test.com
kubectl create secret docker-registry  harbor.esds-test.com --docker-server=harbor.esds-test.com
kubectl create secret docker-registry  harbor.esds-test.com --docker-server=harbor.esds-test.com --docker-username=admin --docker-password=Harbor12345
kubectl get secret
cd /root/smaple-project/
vi test-deployment.yaml 
kubectl apply -f test-deployment.yaml 
vi test-deployment.yaml 
kubectl apply -f test-deployment.yaml 
vi test-deployment.yaml 
kubectl apply -f test-deployment.yaml 
kubectl get secret
kubectl get pods
watch kubectl get pods
kubectl delete -f test-deployment.yaml 
kubectl apply -f test-deployment.yaml 
kubectl get pods
cat .docker/config.json
cd ~
cat .docker/config.json
kubectl get pods
kubectl logs python-flask-demo-84ff46cc5-66ssg 
history
cat /etc/hosts
cd smaple-project/
kubectl delete -f test-deployment.yaml
kubectl apply -f test-deployment.yaml
kubectl get pods
cat test-deployment.yaml 
docker pull harbor.esds-test.com/test-cicd/my-docker-image@sha256:b0627758c00e8de0f4aa150b41665eed59d6cd2e0589d8dd9c19852ccb1531d0
kubectl get pods
kubectl describe pod python-flask-demo-84ff46cc5-6cmhx
systemctl restart docker
kubectl get secret
kubectl edit secret harbor.esds-test.com
kubectl get pods
kubectl apply -f test-deployment.yaml
kubectl get pods
kubectl delete -f test-deployment.yaml
kubectl apply -f test-deployment.yaml
kubectl get pods
mv /etc/docker/certs.d/harbor.esds-test.com\:443/ /etc/docker/certs.d/harbor.esds-test.com
systemctl restart docker
cp /etc/docker/certs.d/harbor.esds-test.com* /usr/local/share/ca-certificates/
cp -r /etc/docker/certs.d/harbor.esds-test.com* /usr/local/share/ca-certificates/
systemctl restart docker
kubectl get pods
systemctl restart docker
kubectl get pods
kubectl delete -f test-deployment.yaml
kubectl apply -f test-deployment.yaml
kubectl get pods
update-ca-certificates
systemctl restart docker
kubectl delete -f test-deployment.yaml
kubectl apply -f test-deployment.yaml
kubectl get pods
kubectl describe pod python-flask-demo-84ff46cc5-jvbtt
mv /etc/docker/certs.d/harbor.esds-test.com/ /etc/docker/certs.d/harbor.esds-test.com:443
kubectl delete -f test-deployment.yaml
kubectl apply -f test-deployment.yaml
kubectl get pods
vi test-deployment.yaml 
ll
kubectl get secret
kubectl delete secret harbor.esds-test.com
kubectl get secret
kubectl create secret docker-registry my-registry-secret --docker-username=admin --docker-password=Harbor12345
vi test-deployment.yaml 
kubectl delete -f test-deployment.yaml 
vi test-deployment.yaml 
kubectl delete -f test-deployment.yaml 
kubectl apply -f test-deployment.yaml 
vi test-deployment.yaml 
kubectl delete -f test-deployment.yaml 
kubectl apply -f test-deployment.yaml 
vi test-deployment.yaml 
kubectl apply -f test-deployment.yaml 
vi test-deployment.yaml 
kubectl apply -f test-deployment.yaml 
vi test-deployment.yaml 
kubectl apply -f test-deployment.yaml 
vi test-deployment.yaml 
kubectl apply -f test-deployment.yaml 
kubectl get pods
kubectl describe po python-flask-demo-59bb6d77d5-pkbt7
curl -kv https://harbor.esds-test.com
kubectl get pods
kubectl delete -f test-deployment.yaml 
kubectl apply -f test-deployment.yaml 
kubectl get pods
vi test-deployment.yaml 
kubectl delete -f test-deployment.yaml 
kubectl apply -f test-deployment.yaml 
kubectl get pods
vi test-deployment.yaml 
kubectl delete -f test-deployment.yaml 
kubectl apply -f test-deployment.yaml 
kubectl get pods
vi test-deployment.yaml 
kubectl delete -f test-deployment.yaml 
kubectl apply -f test-deployment.yaml 
kubectl get pods
kubectl get secret
kubectl delete secret my-registry-secret
kubectl create secret generic my-registry-secret --from-file=.dockerconfigjson=/root/.docker/config.json --type=kubernetes.io/dockerconfigjson
kubectl get secret
kubectl delete -f test-deployment.yaml 
kubectl apply -f test-deployment.yaml 
kubectl get secret
kubectl get pod
ll
vi test-deployment.yaml 
kubectl describe secret my-registry-secret
kubectl get pod
kubectl describe pod python-flask-demo-644f79bbcd-6lsfq
curl -v https://harbor.esds-test.com
cd gitlab-executer/
ll
vi values.yml 
helm upgrade gitlab-runner gitlab/gitlab-runner -f values.yaml --namespace gitlab
helm upgrade gitlab-runner gitlab/gitlab-runner -f values.yml --namespace gitlab
kubectl get po -n gitlab
kubectl describe po gitlab-runner-58577ddd8b-h8gjx -n gitlab
kubectl get po -n gitlab
watch kubectl get po -n gitlab
kubectl logs  gitlab-runner-58577ddd8b-h8gjx -n gitlab
vi /etc/hosts
nslookup gitlab.esds-test.com
telnet 172.16.106.242 443
telnet 172.16.106.242 80
curl -k https://172.16.106.238:6443/healthz
curl -vk https://172.16.106.238:6443/healthz
vi /etc/gitlab-runner/config.toml 
systemctl restart gitlab-runner.service 
vi /etc/gitlab-runner/config.toml 
systemctl restart gitlab-runner.service 
vi /etc/gitlab-runner/config.toml 
systemctl restart gitlab-runner.service 
vi /etc/gitlab-runner/config.toml 
systemctl restart gitlab-runner.service 
vi /etc/gitlab-runner/config.toml 
systemctl restart gitlab-runner.service 
kubectl get pods
kubectl logs python-flask-demo-644f79bbcd-6lsfq
kubectl describe pod  python-flask-demo-644f79bbcd-6lsfq
docker pull harbor.esds-test.com/test-cicd/my-docker-image@sha256:b0627758c00e8de0f4aa150b41665eed59d6cd2e0589d8dd9c19852ccb1531d0
kubectl delete -f smaple-project/test-deployment.yaml 
kubectl apply -f smaple-project/test-deployment.yaml 
kubectl get pods
kubectl describe pod python-flask-demo-644f79bbcd-qk542
mv /etc/docker/certs.d/harbor.esds-test.com\:443 /etc/docker/certs.d/harbor.esds-test.com
systemctl restart docker.service 
systemctl restart containerd.service 
kubectl delete -f smaple-project/test-deployment.yaml 
kubectl apply -f smaple-project/test-deployment.yaml 
kubectl get pods
watch kubectl get pods
kubecctl logs python-flask-demo-644f79bbcd-hsjjz
kubectl logs python-flask-demo-644f79bbcd-hsjjz
kubectl get pods
kubectl exec python-flask-demo-644f79bbcd-hsjjz -it bash
kubectl exec -it python-flask-demo-644f79bbcd-hsjjz -bash
kubectl exec --help
kubectl exec  python-flask-demo-644f79bbcd-hsjjz bash
kubectl exec  python-flask-demo-644f79bbcd-hsjjz -it bash
kubectl get pods
kubectl exec  python-flask-demo-644f79bbcd-hsjjz -it bash
kubectl exec -it python-flask-demo-644f79bbcd-hsjjz -- bash
kubectl logs python-flask-demo-644f79bbcd-hsjjz 
pip install werkzeug==0.16.1
vi /usr/local/lib/python3.9/site-packages/flask/helpers.py
vi /usr/local/lib/python3.9/site-packages/werkzeug/urls.py
pip install werkzeug==0.16.1
pip install werkzeug==0.16.1 --break-system-packages.
pip install werkzeug==0.16.1 --break-system-packages
pip install --upgrade Flask
pip install --upgrade Flask --break-system-packages
vi /usr/local/lib/python3.9/site-packages/werkzeug/urls.py
flask version
flask --version
vi smaple-project/test-deployment.yaml 
kubectl delete -f  smaple-project/test-deployment.yaml 
kubectl apply -f  smaple-project/test-deployment.yaml 
kubectl get pods
kubectl logs python-flask-demo-54cb9b5487-z46tl
vi smaple-project/test-deployment.yaml 
kubectl delete -f  smaple-project/test-deployment.yaml 
kubectl apply -f  smaple-project/test-deployment.yaml 
kubectl get pods
watch kubectl get pods
cat  smaple-project/test-deployment.yaml 
gitlab-runner register  --url https://gitlab.esds-test.com  --token glrt-XNsxYS7aeBK5t91mkKPs
gitlab-runner run
cat /etc/gitlab-runner/config.toml 
vi /etc/gitlab-runner/config.toml 
systemctl restart gitlab-runner.service 
vi /etc/gitlab-runner/config.toml 
systemctl restart gitlab-runner.service 
vi /etc/gitlab-runner/config.toml 
systemctl restart gitlab-runner.service 
kubectl get svc -n kube-system
kubectl get pods -n kube-system
helm repo add gitlab https://charts.gitlab.io
helm repo update
helm upgrade --install k8-test gitlab/gitlab-agent     --namespace gitlab-agent-k8-test     --create-namespace     --set image.tag=v17.2.1     --set config.token=glagent-feaP3SaiCYCo5xmqJczArS-6sopf9F5gmse3z2qGZPJwprB_Pw     --set config.kasAddress=wss://gitlab.esds-test.com/-/kubernetes-agent/
cat /etc/gitlab-runner/config.toml 
gitlab-runner register  --url https://gitlab.esds-test.com  --token glrt-S7-9qVx-PzSbUr4yzmoa
cat /etc/sudoers
vi /etc/sudoers
ll
cd /root/.kube/config
ll /root/.kube/config
mkdir -p /home/gitlab-runner/.kube/
touch /home/gitlab-runner/.kube/config
cp /root/.kube/config /home/gitlab-runner/.kube/config 
ll /home/gitlab-runner/.kube/config 
chown gitlab-runner:gitlab-runner /home/gitlab-runner/.kube/config
cd /home/gitlab-runner/builds/S7-9qVx-P/0/root/gitlab-cicd-demo/.git/
ll
cd /home/gitlab-runner/builds/S7-9qVx-P/0/root/gitlab-cicd-demo
ll
cd Test-code/
ll
cd deploy/
ll
cd kubernetes/
ll
pwd
kubectl get pods -o wide
cd /home/gitlab-runner/builds/S7-9qVx-P/0/root/gitlab-cicd-demo/Test-code/deploy/kubernetes
ll
vi flask-deployment.yaml 
ll
cd smaple-project/
ll
cd ..
history
kubectl get pods
kubectl describe po python-flask-demo-7fcb7b7b99-ftz9n
kubectl get pods
kubectl describe po python-flask-demo-7dc5c87bf9-7bvgl
kubectl get pods
kubectl describe po python-flask-demo-66c68fb87f-9l428
cd /home/gitlab-runner/builds/S7-9qVx-P/0/root/gitlab-cicd-demo/Test-code/deploy/kubernetes
kubectl apply -f flask-deployment.yaml 
ll
vi flask-deployment.yaml 
echo $TAG_NAME
kubectl get pods
kubectl describe po python-flask-demo-7dc5c87bf9-qqrzd
echo $TAG_NAME
echo TAG_NAME
echo "$TAG_NAME"
export TAG_NAME=${CI_COMMIT_REF_NAME}-${CI_PIPELINE_ID}
echo "$TAG_NAME"
echo ${CI_COMMIT_REF_NAME}-${CI_PIPELINE_ID}
kubectl get pods
kubectl describe po python-flask-demo-55bfd66f9f-pc9mk
kubectl get pods
kubectl describe po python-flask-demo-6b5df66564-xm8fl
kubectl get nodes
kubectl get pods
cd /etc/ssl/certs/
ll
ls -ltrh
ll /etc/docker/certs.d/harbor.esds-test.com/
docker pull harbor.esds-test.com/uat/my-test-image:UAT-139
kubectl get pods
kubectl describe pod python-flask-demo-76b78d67b9-mf42r
docker pull harbor.esds-test.com/dev/my-test-image:Dev-136
docker login
docker login harbor.esds-test.com
docker login harbor.esds-test.com:443
docker login https://harbor.esds-test.com
docker login harbor.esds-test.com:443
kubectl get nodes
kubectl get nodes -o wide
kubectl get pods
swapoff --help
sudo swapoff -a
sudo sed -i '/ swap / s/^\(.*\)$/#\1/g' /etc/fstab
sestatus
ping google.com
curl -vk http://172.16.106.247
curl -vk http://172.16.106.247:32406
kubectl get all
curl -vk http://10.105.233.113
kubectl get pods -n kube-system
netstat -tulnp
kubectl get nodes
kubectl get pods
kubectl get all
kubectl drain k8-worker1 --ignore-daemonsets
kubectl drain k8-worker1 --ignore-daemonsets --delete-emptydir-data
sudo apt-get update
kubectl get nodes
kubectl uncordon k8-worker1 
kubectl get nodes
ll
kubectl get pods --color
kubecolor get pods
apt install kubecolor
kubecolor get pods
kubecolor get pods -A
kubectl get pods
kubecolor get pods
kubecolor get nodes
kubectl delete pod python-flask-demo-5c794459cd-c7n5j
kubecolor get pods
kubectl logs --previous python-flask-demo-5c794459cd-9w2dx
kubectl logs --previous python-flask-demo-5c794459cd-c7n5j
kubectl get deployment
kubectl restart rollout deploy python-flask-demo
kubectl  rollout restart deploy python-flask-demo
kubecolor get pods
kubectl logs --previous python-flask-demo-65dfc97855-m8tvb
kubectl logs python-flask-demo-65dfc97855-m8tvb log.txt
kubectl logs python-flask-demo-65dfc97855-m8tvb >>log.txt
cat log.txt 
kubectl get pods --show-bales
kubectl get pods --show-lables
kubectl get --help
kubectl get pods -L
kubectl get pods --label-columns=[]:
kubectl get pods --show-labels=false:
kubectl get pods --show-labels
kubectl get events --sort-by=.metadata.creationTimestamp
kubectl get nodes
kubectl drain k8-worker1 -w
watch kubectl drain k8-worker1 
kubectl get nodes
kubectl uncordon node k8-worker1 
kubectl uncordon  k8-worker1 
kubectl get nodes
mkdir test
cd test/
vi locustfile.py
vi locust-deployment.yaml
vi locust-configmap.yaml
kubectl apply -f locust-configmap.yaml
kubectl apply -f locust-deployment.yaml
vi locust-service.yaml
kubectl apply -f locust-service.yaml
vi stressor.yaml
kubectl apply -f stressor.yaml
kubectl get pods
kubectl delete -f locust-deployment.yaml
kubectl delete -f locust-service.yaml
kubectl delete configmap locust-scripts
kubectl delete pod stressor
kubectl get pods
kubectl adm top nodes
kubectl run -i --tty load-generator --rm --image=busybox --restart=Never   --image-pull-policy=Always   --overrides='
  {
    "apiVersion": "v1",
    "spec": {
      "containers": [
        {
          "name": "load-generator",
          "image": "busybox",
          "command": ["/bin/sh", "-c"],
          "args": ["while true; do wget -q -O- http://hpa-demo-deployment || echo 'Failed'; sleep 0.01; done"]
        }
      ],
      "imagePullSecrets": [
        {
          "name": "reg-cred"
        }
      ]
    }
  }'
kubectl delete pod load-generator
ll
ls -la
mkdir metric-server
cd metric-server/
ll
curl -LO https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
ll
vi components.yaml 
kubectl apply -f components.yaml 
kubectl get pods -n kube-system
kubectl get pods -n kube-system | grep metrics-server-84989b68d9-5574f
kubectl top nodes
kubectl top pods 
kubectl top pods -A
kubectl top nodes
ll
vi deployment.yaml
cat deployment.yaml 
kubectl apply -f deployment.yaml 
kubectl get pods
kubectl get deploy
vi service.yaml
cat service.yaml 
kubectl apply -f service.yaml 
kubectl get svc
vi hpa.yaml
cat hpa.yaml
kubectl apply -f hpa.yaml 
kubectl get hpa
kubectl get deploy
kubectl run -i --tty load-generator --rm --image=busybox --restart=Never -- /bin/sh -c "while sleep 0.01; do wget -q -O- http://hpa-demo-deployment; done"
kubectl get hpa
kubectl get svc
kubectl get pods
kubectl describe load-generator
kubectl describe pod load-generator
kubectl get pods
docker pull busybox
docker pull busybox1
docker pull busybox:1
docker logout
docker login
docker pull busybox
docker login
docker pull busybox
kubectl get pods
docker pull busybox
kubectl delete pods load-generator
kubectl delete pod load-generator
kubectl get pods
watch kubectl get pods
kubectl get hpa
watch kubectl get pods
kubectl get pods
kubectl delete pod load-generator
kubectl get pods
docker login
kubectl delete secret reg-cred
kubectl create secret generic reg-cred --from-file=.dockerconfigjson=/root/.docker/config.json --type=kubernetes.io/dockerconfigjson
kubectl get pods
watch kubectl get pods
kubectl get hpa
watch kubectl get pods
kubectl delete pod load-generator
watch kubectl get pods
kubectl get pods
watch kubectl get pods
kubectl get hpa
watch kubectl get hpa
kubectl delete pod load-generator
watch kubectl get hpa
watch kubectl get pods
kubectl delete pod load-generator
watch kubectl get pods
watch kubectl get hpa
kubectl get svc
kubectl get hpa
watch kubectl get hpa
vi stress.yaml
kubectl apply -f stress.yaml 
kubectl get pod
kubectl delete -f stress.yaml 
kubectl get pod
kubectl get hpa
watch kubectl get hpa
kubectl get svc
watch kubectl get hpa
kubectl edit hpa hpa-demo-deployment
watch kubectl get hpa
kubectl get pod
kubectl delete pod load-generator
kubectl get pod
watch kubectl get pod
watch kubectl get hpa
kubectl get pod
watch kubectl get hpa

watch kubectl get hpa
kubectl get pod
watch kubectl get pod
vi hpa.yaml 
kubectl delete -f hpa.yaml 
kubectl apply -f hpa.yaml 
vi hpa.yaml 
kubectl apply -f hpa.yaml 
kubectl api-versions | grep autoscaling
vi hpa.yaml 
watch kubectl get pod
vi deployment.yaml 
vi hpa.yaml 
kubectl apply -f hpa.yaml 
vi hpa.yaml 
kubectl apply -f hpa.yaml 
watch kubectl get pod
kubectl get deploy
watch kubectl get pod
cat hpa.yaml 
kubecolor get nodes
kubecolor get hpa
kubecolor get pods
kubectl get pods
kubectl get hpa
docker pull nginx
cat /root/.docker/config.json 
kubect get secret
kubectl get secret
kubectl get pods
ll
mkdir kubephere
cd kubephere/
ll
curl -L https://kubesphere.io/download/stable/latest > installer.tar.gz && tar -zxf installer.tar.gz && cd kubesphere-all-v2.1.1/scripts
ll
tar -zxf installer.tar.gz
tar -jxvf installer.tar.gz
chmod +x installer.tar.gz
tar -jxvf installer.tar.gz
file installer.tar.gz
curl -LO https://kubesphere.io/download/stable/latest > installer.tar.gz && tar -zxf installer.tar.gz && cd kubesphere-all-v2.1.1/scripts
ll
rm -rf .
rm -rf *
ll
wget https://kubesphere.io/download/stable/latest
wget https://kubesphere.io/download
wget https://kubesphere.io
ll
curl -L https://kubesphere.io/download/stable/latest > installer.tar.gz
ll
tar -zf installer.tar.gz 
tar -zxf installer.tar.gz 
docker pull kubesphere/ks-installer
docker pull kubesphere/ks-installer:v3.4.1
docker pull kubesphere/ks-console:v3.4.1
docker images
docker pull kubesphere/ks-controller-manager:v3.4.1
docker pull kubesphere/ks-apiserver:v3.4.1
docker images
docker pull kubesphere/ks-controller-manager:v3.4.1
docker images
kubectl apply -f https://github.com/kubesphere/ks-installer/releases/download/v3.4.1/kubesphere-installer.yaml
kubectl apply -f https://github.com/kubesphere/ks-installer/releases/download/v3.4.1/cluster-configuration.yaml
docker pull nginx
docker logout
docker pull nginx
ll
kubectl apply -f https://openebs.github.io/charts/openebs-operator.yaml
kubectl get all -n openebs
kubectl get sc
kubectl edit sc openebs-device
kubectl get sc
kubectl get pods -n kubesphere-sysetm
kubectl get pods -n kubesphere-system
kubectl delete pod ks-installer-548bd7d94d-467ss -n kubesphere-system
kubectl logs -n kubesphere-system $(kubectl get pod -n kubesphere-system -l 'app in (ks-install, ks-installer)' -o jsonpath='{.items[0].metadata.name}') -f
cat .kube/config 
kubectl logs -n kubesphere-system $(kubectl get pod -n kubesphere-system -l 'app in (ks-install, ks-installer)' -o jsonpath='{.items[0].metadata.name}') -f
cat .kube/config 
kubectl version
free -g
kubectl get pods -n kubesphere-system
kubectl get all -n kubesphere-system
kubectl get pods
kubectl get hpa
kubectl get pods -n prometheus
kubectl get pods -n prometheus -o wide
kubectl get deploy -n prometheus
kubectl get ss -n prometheus
kubectl get all -n prometheus
kubectl edit statefulset.apps/alertmanager-kube-prometheus-stack-alertmanager -n prometheus
kubectl get all -n prometheus
kubectl get pods -n prometheus
kubectl get all -n kubescape
kubectl get all -n prometheus
kubectl edit daemonset.apps/kube-prometheus-stack-prometheus-node-exporter -n promethues
kubectl edit daemonset.apps/kube-prometheus-stack-prometheus-node-exporter -n prometheus
kubectl get all -n prometheus
kubectl describe pod pod/kube-prometheus-stack-prometheus-node-exporter-jnzcn  -n prometheus
kubectl describe  pod/kube-prometheus-stack-prometheus-node-exporter-jnzcn  -n prometheus
kubectl get all -n prometheus
kubectl get all -n kubescape
sudo add-apt-repository ppa:kubescape/kubescape
sudo apt update
sudo apt install kubescape
helm
helm repo add kubescape https://kubescape.github.io/helm-charts/ ; helm repo update ; helm upgrade --install kubescape kubescape/kubescape-operator -n kubescape --create-namespace --set clusterName=`kubectl config current-context` --set capabilities.continuousScan=enable
kubectl get workloadconfigurationscansummaries
helm repo update; helm upgrade kubescape kubescape/kubescape-operator -n kubescape
ll
helm list -n kubescape
helm get values kubescape -n kubescape > values.yaml
vi values.yaml 
helm upgrade kubescape kubescape-operator/kubescape -n kubescape -f values.yaml
helm repo update; helm search repo kubescape/kubescape-operator
helm upgrade kubescape kubescape-operator/kubescape -n kubescape -f values.yaml
helm upgrade kubescape  -n kubescape -f values.yaml
helm repo update; helm upgrade kubescape kubescape/kubescape-operator -n kubescape  -f values.yaml
vi values.yaml 
helm repo update; helm upgrade kubescape kubescape/kubescape-operator -n kubescape  -f values.yaml
kubectl get vulnerabilitymanifestsummaries -A
kubescape
kubectl get all -A --no-headers | wc -l
kubectl get -n kubescape sbomsyfts
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
kubectl create namespace prometheus
helm install -n prometheus kube-prometheus-stack prometheus-community/kube-prometheus-stack --set prometheus.prometheusSpec.podMonitorSelectorNilUsesHelmValues=false,prometheus.prometheusSpec.serviceMonitorSelectorNilUsesHelmValues=false
kubectl get pods -n prometheus
watch kubectl get pods -n prometheus 
helm repo add kubescape https://kubescape.github.io/helm-charts/
helm repo update
helm upgrade --install <...> --set capabilities.prometheusExporter=enable --set configurations.prometheusAnnotations=enable
vi values.yaml 
helm repo update; helm upgrade kubescape kubescape/kubescape-operator -n kubescape  -f values.yaml
kubectl get pods -n prometheus
helm uninstall -n prometheus kube-prometheus-stack prometheus-community/kube-prometheus-stack 
kubectl get pods -n prometheus
