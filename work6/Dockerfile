FROM ubuntu:20.04
RUN apt-get update
RUN apt-get install -y apt-utils \
&& apt-get install -y dialog \
&& apt-get install -y default-jdk \
&& apt-get install -y tomcat9 \
&& apt-get install -y maven \
&& apt-get install -y git \
&& cd ~ \
&& git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git \
&& cd boxfuse-sample-java-war-hello/ \
&& mvn package \
&& cd target/ \
&& cp hello-1.0.war /var/lib/tomcat9/webapps/
EXPOSE 8080
CMD /bin/bash
