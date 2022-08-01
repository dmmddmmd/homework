FROM tomcat:latest
RUN apt-get update \
&& apt-get install -y apt-utils \
&& apt-get install -y maven \
&& apt-get install -y git \
&& cd /root \
&& git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git \
&& cd boxfuse-sample-java-war-hello/ \
&& rm pom.xml
ADD pom.xml /root/boxfuse-sample-java-war-hello/
RUN cd /root/boxfuse-sample-java-war-hello/ \
&& mvn package -e \
&& cd target/ \
&& cp hello-1.0.war /var/lib/tomcat9/webapps/
EXPOSE 8080

