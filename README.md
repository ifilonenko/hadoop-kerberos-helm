### Bloomberg Big Data and NoSQL Platform
#### 1. Build Hadoop distro
#### 2. Build docker image 
```
docker build -t hadoop-base:latest -f Dockerfile .
```
Push the image to your repository unless using a local cluster.

#### 3. Minikube setup

If you are using minikube, create the paths:
`/tmp/nn` and `/tmp/keytab` on your host machine.

#### 4. Start PVCs
```
helm install -n hdfs-pvs pv
```
#### 5. Start Pods
```
helm install -n hdfs-pods deployments
```
#### 6. Run kinit in NameNode
```
kubectl exec -it <POD_NAME> /bin/bash
kinit -kt /var/keytabs/hdfs.keytab hdfs/nn.example.com
hdfs dfs -ls /
```
