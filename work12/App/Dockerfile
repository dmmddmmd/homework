FROM ubuntu:20.04
RUN apt-get update \
&& apt-get install -y maven \
&& apt-get install -y git \
#&& apt-get install -y wget \
&& cd /root \
&& git clone https://github.com/shephertz/App42PaaS-Java-MySQL-Sample.git \
&& cd App42PaaS-Java-MySQL-Sample/ \
&& rm pom.xml \
&& cd WebContent \
&& rm Config.properties
ADD pom.xml /root/App42PaaS-Java-MySQL-Sample/
#ADD Config.properties /root/App42PaaS-Java-MySQL-Sample/WebContent/
#ADD Config.properties /ROOT/
#RUN mkdir /opt/tomcat \
#  && wget https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.82/bin/apache-tomcat-8.5.82.tar.gz \
#  && tar xvzf apache-tomcat-8.5.82.tar.gz --strip-components 1 --directory /opt/tomcat \
#  && rm apache-tomcat-8.5.82.tar.gz
#RUN mkdir /opt/tomcat \
#  && wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.65/bin/apache-tomcat-9.0.65.tar.gz \
#  && tar xvzf apache-tomcat-9.0.65.tar.gz --strip-components 1 --directory /opt/tomcat \
#  && rm apache-tomcat-9.0.65.tar.gz
RUN cd /root/App42PaaS-Java-MySQL-Sample/ \
&& mvn package \
#&& cd target/ \
&& mkdir /root/share/
#&& cp App42PaaS-Java-MySQL-Sample-0.0.1-SNAPSHOT.war /opt/tomcat/webapps/
#CMD ["/opt/tomcat/bin/catalina.sh","run"]
CMD ["cp","/root/App42PaaS-Java-MySQL-Sample/App42PaaS-Java-MySQL-Sample-0.0.1-SNAPSHOT.war", "/root/share/"]
