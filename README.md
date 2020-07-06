# abilists_docker <a href="http://www.abilists.com" ><img src="https://github.com/minziappa/abilists_client/blob/master/src/main/webapp/static/apps/img/abilists/logo01.png" height="22" alt="Abilists"></a>

This is a docker file to build image of Docker.

##Share the image of docker for Abilists. Version 0.9.7

```
$ docker push abilists/tomcat8.5:0.9.7
The push refers to repository [docker.io/abilists/tomcat8.5]
9e1794b454f7: Pushed 
e1eba8915abe: Pushed 
0768c91a16cd: Pushed 
b7cbd020684b: Pushed 
0c6ab6a37f9e: Pushed 
a25cb9b66eb3: Pushed 
223b1280686b: Pushed 
c6d2ad4739b3: Layer already exists 
209f36d6cd03: Layer already exists 
a25112f3c79b: Layer already exists 
60cd002d6b99: Layer already exists 
8ae4e7554402: Layer already exists 
2492b0ca57f8: Layer already exists 
fbc3b2dba006: Layer already exists 
dfc3c372b2bb: Layer already exists 
831c5620387f: Layer already exists 
0.7.0: digest: sha256:295c073a95df7b150f8438900cc98908ba03e4b1617cd83bb9ed1cd0cd51f837 size: 3674
```

## How to use

**Pulling the Docker image of Abilists**

```
$ docker pull abilists/tomcat8.5:0.9.7
```

**How to run the image on Docker.**
* Linux
```
$ docker container run -d -p 80:8080 -v ~/.abilists:/root/.abilists abilists/tomcat8.5:0.9.7
```
* Windows
```
$ docker container run -d -p 80:8080 -v /Users/<user home>/.abilists:/root/.abilists abilists/tomcat8.5:0.9.7
```
*user home is your account name

---

## Information
You should follow the below if you want to have a image of docker on your local system.

**Saving the Docker image of Abilists**

```
$ docker save --output docker-abilists-tomcat8.5-0.9.7.tar abilists/tomcat8.5:0.9.7
```

**Loading the Docker image of Abilists**

```
$ docker load --input ./images/docker-abilists-tomcat8.5-0.9.7.tar
```

## troubleshooting

$ docker: Error response from daemon: driver failed programming external connectivity on endpoint vigorous_mendel (eb79eda105edd397cc44fa381b37e090f0368bad3c44ebca87017b7633834583): Bind for 0.0.0.0:80 failed: port is already allocated.

```
$docker container ls
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS                  NAMES
44efe95120d4        abilists:0.9.7     "catalina.sh run"   15 minutes ago      Up 15 minutes       0.0.0.0:80->8080/tcp   epic_williams
$ docker stop 44efe95120d4
```

$ docker rmi 5107cd1c6eca
Error response from daemon: conflict: unable to delete 5107cd1c6eca (must be forced) - image is referenced in multiple repositories

```
$ docker rmi abilists/tomcat8.5:0.9.7
Untagged: abilists/tomcat8.5:0.9.7
```

**How to stop the image on Docker.**

```
$ docker ps -a
$ docker stop <CONTAINER ID>
$ docker start <CONTAINER ID>
```

**How to check the log file on Abilists**
```
docker exec -i -t <CONTAINER ID> /bin/bash
```

## Docker repository for Abilists
** URL **

https://hub.docker.com/r/abilists/tomcat8.5
