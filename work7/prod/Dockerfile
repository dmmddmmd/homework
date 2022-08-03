FROM alpine:3.14
RUN apk update \
  && apk add openjdk8-jre-headless

RUN mkdir /opt/tomcat \
  && wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.65/bin/apache-tomcat-9.0.65.tar.gz \
  && tar xvzf apache-tomcat-9.0.65.tar.gz --strip-components 1 --directory /opt/tomcat \
  && rm apache-tomcat-9.0.65.tar.gz
CMD ["/opt/tomcat/bin/catalina.sh","run"]

#RUN cd /var/ \
#  && wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.0.23/bin/apache-tomcat-10.0.23.tar.gz \
#  && tar zxvpf apache-tomcat-10.0.23.tar.gz \
#  && rm apache-tomcat-10.0.23.tar.gz
#CMD ["/var/apache-tomcat-10.0.23/bin/catalina.sh","run"]
