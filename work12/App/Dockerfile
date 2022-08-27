FROM tomcat:6.0
RUN apt-get update \
&& apt-get install -y apt-utils \
&& apt-get install -y maven \
&& apt-get install -y git \
&& cd /root \
&& git clone https://github.com/shephertz/App42PaaS-Java-MySQL-Sample.git \
&& cd App42PaaS-Java-MySQL-Sample/ \
&& rm pom.xml \
&& cd WebContent \
&& rm Config.properties
ADD pom.xml /root/App42PaaS-Java-MySQL-Sample/
ADD Config.properties /root/App42PaaS-Java-MySQL-Sample/WebContent/
RUN cd /root/App42PaaS-Java-MySQL-Sample/ \
&& mvn package \
&& cd target/ \
&& cp App42PaaS-Java-MySQL-Sample-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/

