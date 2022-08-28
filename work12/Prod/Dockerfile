FROM ubuntu:20.04
RUN apt-get update \
&& apt-get install -y wget
# ADD Config.properties /root/App42PaaS-Java-MySQL-Sample/WebContent/
RUN mkdir /opt/tomcat \
  && wget https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.82/bin/apache-tomcat-8.5.82.tar.gz \
  && tar xvzf apache-tomcat-8.5.82.tar.gz --strip-components 1 --directory /opt/tomcat \
  && rm apache-tomcat-8.5.82.tar.gz
#RUN mkdir /opt/tomcat \
#  && wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.65/bin/apache-tomcat-9.0.65.tar.gz \
#  && tar xvzf apache-tomcat-9.0.65.tar.gz --strip-components 1 --directory /opt/tomcat \
#  && rm apache-tomcat-9.0.65.tar.gz
ADD Config.properties /ROOT/
RUN mkdir /root/share
#CMD ["cp","/root/share/App42PaaS-Java-MySQL-Sample-0.0.1-SNAPSHOT.war","/opt/tomcat/webapps/"]
CMD ["/opt/tomcat/bin/catalina.sh","run"]

