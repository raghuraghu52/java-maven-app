FROM ubuntu:20.04
MAINTAINER RAGHAVENDRA
RUN apt-get update &&  apt-get upgrade 
RUN apt-get -y install default-jdk
RUN mkdir tomcat
RUN cd tomcat
WORKDIR tomcat/
RUN apt-get -y install wget
RUN  wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.70/bin/apache-tomcat-9.0.70.tar.gz
RUN tar xvf apache-tomcat-9.0.70.tar.gz
RUN mv apache-tomcat-9.0.70.tar.gz tomcat
COPY Amazon.war .
COPY Amazon.war /tomcat/webapps
EXPOSE 8087
CMD ["run","catalina.sh","run"]
