# abilists_docker
This is a docker file to build image of Docker.

## Share the image of docker for Abilists.

```
$ docker push abilists/tomcat8.5:0.5.0
The push refers to repository [docker.io/abilists/tomcat8.5]
aba6995009c8: Pushed 
4e660601de80: Pushed 
aa3eeaee92ad: Pushed 
82d93a0caf6c: Pushed 
d1ef10e88679: Pushed 
e50cd73c8aaf: Pushed 
c486915b73a6: Pushed 
a25112f3c79b: Layer already exists 
60cd002d6b99: Layer already exists 
8ae4e7554402: Layer already exists 
2492b0ca57f8: Layer already exists 
fbc3b2dba006: Layer already exists 
dfc3c372b2bb: Layer already exists 
831c5620387f: Layer already exists 
0.5.0: digest: sha256:d44f5e7b78f0fcc3e6ba9f3e4d57621d1c59743032419ab3618fb2568342f507 size: 3254
```

**Pulling the Docker image of Abilists**

```
$ docker pull abilists/tomcat8.5:0.5.0
```

**How to run the image on Docker.**

```
$ docker container run -d -p 80:8080 -v ~/.abilists:/root/.abilists abilists/tomcat8.5:0.5.0
```
---

## You should follow the below if you want to have a image of docker on your local system.

**Saving the Docker image of Abilists**

```
$ docker save --output docker-abilists-tomcat8.5-0.5.0.tar abilists/tomcat8.5:v0.5.0
```

**Loading the Docker image of Abilists**

```
$ docker load --input ./images/docker-abilists-tomcat8.5-0.5.0.tar
```

**troubleshooting**

$ docker: Error response from daemon: driver failed programming external connectivity on endpoint vigorous_mendel (eb79eda105edd397cc44fa381b37e090f0368bad3c44ebca87017b7633834583): Bind for 0.0.0.0:80 failed: port is already allocated.

```
$docker container ls
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS                  NAMES
44efe95120d4        abilists:v0.4.1     "catalina.sh run"   15 minutes ago      Up 15 minutes       0.0.0.0:80->8080/tcp   epic_williams
$ docker stop 44efe95120d4
```
** How to stop the image on Docker. **

```
$ docker ps -a
$ docker stop <CONTAINER ID>
```

## Docker repository for Abilists
** URL **

https://hub.docker.com/repository/docker/abilists/tomcat8.5
