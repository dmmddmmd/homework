FROM ubuntu:20.04
RUN apt-get update \
&& apt-get install -y openjdk-8-jre \
&& apt-get install -y wget
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
CMD ["/opt/tomcat/bin/catalina.sh","run"]

