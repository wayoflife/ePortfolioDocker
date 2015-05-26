FROM ubuntu

MAINTAINER "Daniel Betsche" <dbetsche@gmail.com>

RUN apt-get update && apt-get install -y tomcat7

ADD http://mirrors.jenkins-ci.org/war/latest/jenkins.war /var/lib/tomcat7/webapps

ENTRYPOINT["/bin/bash"]
CMD["/etc/init.d/tomcat7", "start"]

EXPOSE 8080