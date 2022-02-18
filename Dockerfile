FROM centos

MAINTAINER aksarav@middlewareinventory.com

RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat

RUN curl -O https://dlcdn.apache.org/tomcat/tomcat-10/v10.0.16/bin/apache-tomcat-10.0.16.tar.gz
RUN tar -xvzf apache*.tar.gz
RUN mv apache-tomcat-10.0.16/* /opt/tomcat/.


WORKDIR /opt/tomcat/webapps
COPY /var/lib/jenkins/workspace/java_tomcat/target/SimpleTomcatWebApp.war

EXPOSE 8080


