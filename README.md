### Bloomberg Big Data and NoSQL Platform
#### 1. Build Hadoop distro
#### 2. Build docker image 
```
docker build -t hadoop-base:latest -f Dockerfile .
```
#### 3. Start PVCs
```
helm install -n hdfs-pvcs pvc
```
#### 4. Start Pods
```
helm install -n hdfs-pods deployments
```


