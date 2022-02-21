FROM centos

MAINTAINER Lokesh

RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat

RUN curl -O https://dlcdn.apache.org/tomcat/tomcat-10/v10.0.16/bin/apache-tomcat-10.0.16.tar.gz
RUN tar -xvzf apache*.tar.gz
RUN mv apache-tomcat-10.0.16/* /opt/tomcat/.

WORKDIR /opt/tomcat/webapps
RUN curl -O -L https://github.com/AKSarav/SampleWebApp/raw/master/dist/SampleWebApp.war


EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
