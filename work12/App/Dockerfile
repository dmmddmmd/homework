FROM ubuntu:20.04
RUN apt-get update \
&& apt-get install -y maven \
&& apt-get install -y git \
&& cd /root \
&& git clone https://github.com/shephertz/App42PaaS-Java-MySQL-Sample.git \
&& cd App42PaaS-Java-MySQL-Sample/ \
&& rm pom.xml
ADD pom.xml /root/App42PaaS-Java-MySQL-Sample/
RUN cd /root/App42PaaS-Java-MySQL-Sample/ \
&& mvn package \
&& mkdir /root/share/
CMD ["cp","/root/App42PaaS-Java-MySQL-Sample/target/App42PaaS-Java-MySQL-Sample-0.0.1-SNAPSHOT.war", "/root/share/"]
