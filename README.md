# abilists_docker <a href="http://www.abilists.com" ><img src="https://github.com/minziappa/abilists_client/blob/master/src/main/webapp/static/apps/img/abilists/logo01.png" height="22" alt="Abilists"></a>

This is a docker file to build image of Docker.

##Share the image of docker for Abilists. Version 1.0.0

```
$ docker push abilists/tomcat8.5:1.0.0
The push refers to repository [docker.io/abilists/tomcat8.5]
df2dac1a5eb9: Pushed 
0cb305b22bb6: Pushed 
2996efa68b8b: Layer already exists 
676cb4ebf208: Pushed 
f940841f75c5: Pushed 
913c1e1d76c9: Pushed 
3d2a647fd045: Layer already exists 
52aa285d4c8e: Layer already exists 
d16123a2d4e2: Layer already exists 
081243ed7bf5: Layer already exists 
f83c0d7e7b4a: Layer already exists 
64d7a6e6c92c: Layer already exists 
488dfecc21b1: Layer already exists 
1.0.0: digest: sha256:e8331c9eb076f432960a3a972a3ae134fec67de3f2c0f718f0431c2aa6e256a1 size: 3053
```

## How to use

**Pulling the Docker image of Abilists**

```
$ docker pull abilists/tomcat8.5:1.0.0
```

**How to run the image on Docker.**
* Linux
```
$ docker container run -d -p 80:8080 -v ~/.abilists:/root/.abilists abilists/tomcat8.5:1.0.0
```
* Windows
```
$ docker container run -d -p 80:8080 -v /Users/<user home>/.abilists:/root/.abilists abilists/tomcat8.5:1.0.0
```
*user home is your account name

---

## Information
You should follow the below if you want to have a image of docker on your local system.

**Saving the Docker image of Abilists**

```
$ docker save --output docker-abilists-tomcat8.5-1.0.0.tar abilists/tomcat8.5:1.0.0
```

**Loading the Docker image of Abilists**

```
$ docker load --input ./images/docker-abilists-tomcat8.5-1.0.0.tar
```

## troubleshooting

$ docker: Error response from daemon: driver failed programming external connectivity on endpoint vigorous_mendel (eb79eda105edd397cc44fa381b37e090f0368bad3c44ebca87017b7633834583): Bind for 0.0.0.0:80 failed: port is already allocated.

```
$docker container ls
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS                  NAMES
44efe95120d4        abilists:1.0.0     "catalina.sh run"   15 minutes ago      Up 15 minutes       0.0.0.0:80->8080/tcp   epic_williams
$ docker stop 44efe95120d4
```

$ docker rmi 5107cd1c6eca
Error response from daemon: conflict: unable to delete 5107cd1c6eca (must be forced) - image is referenced in multiple repositories

```
$ docker rmi abilists/tomcat8.5:1.0.0
Untagged: abilists/tomcat8.5:1.0.0
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
