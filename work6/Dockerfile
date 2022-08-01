FROM tomcat:latest
RUN apt-get update \
&& apt-get install -y maven \
&& apt-get install -y git \
&& cd ~ \
&& git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git \
&& cd boxfuse-sample-java-war-hello/ \
&& mvn package \
&& cd target/ \
&& cp hello-1.0.war /var/lib/tomcat9/webapps/
EXPOSE 8080

