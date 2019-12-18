FROM tomcat:8.5.50-jdk8-openjdk-slim
MAINTAINER joon.kim@abilists.com

VOLUME ~/.abilists

ENV TZ=Asia/Seoul

RUN apt-get update 
RUN apt-get -y install wget

#RUN adduser --disabled-password --gecos "" abil_tomcat
#RUN chown -R abil_tomcat.abil_tomcat /usr/local/tomcat

VOLUME ~/.abilists

RUN wget https://github.com/abilists/abilists_client/raw/master/webapps/ROOT.war

RUN rm -rf /usr/local/tomcat/webapps/ROOT
RUN rm -rf /usr/local/tomcat/webapps/docs
RUN rm -rf /usr/local/tomcat/webapps/examples

RUN mv ROOT.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]

