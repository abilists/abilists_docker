# abilists_docker
This is a docker file for abilists with tomcat

## abilists_docker abilists$ docker push abilists/tomcat8.5:v0.4.1
```
The push refers to repository [docker.io/abilists/tomcat8.5]
7af039bb9a63: Pushed 
decda579013b: Pushed 
ba5e7911e1d1: Pushed 
f7dc805319ea: Pushed 
def1f8fc0e4c: Pushed 
bb89355fd9f1: Pushed 
ad41fe6bd2ad: Pushed 
a25112f3c79b: Pushed 
60cd002d6b99: Pushed 
8ae4e7554402: Pushed 
2492b0ca57f8: Pushed 
fbc3b2dba006: Pushed 
dfc3c372b2bb: Pushed 
831c5620387f: Pushed 
v0.4.1: digest: sha256:f067cc0dc1d8bc9d068dc2504d6e8e4cc6b3e0f17977ad64409dc2c224533302 size: 3254
```

## Pulling the Docker image of Abilists
```
docker pull abilists/tomcat8.5:v0.4.1
```

## Saving the Docker image of Abilists
```
$ docker save --output docker-abilists-tomcat8.5-0.4.1.tar abilists/tomcat8.5:v0.4.1
```

## Loading the Docker image of Abilists
```
$ docker load --input ./images/docker-abilists-tomcat8.5-0.4.1.tar
```

## How to run the image on Docker.
```

docker container run -p 80:8080 -d -v ~/.abilists:/root/.abilists abilists:v0.4.1
```

## How to stop the image on Docker.
```
$ docker ps -a
$ docker stop <CONTAINER ID>
```
