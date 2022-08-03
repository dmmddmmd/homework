FROM alpine:3.14
RUN apk update \
  && apk add openjdk8

RUN mkdir /opt/tomcat \
  && wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.65/bin/apache-tomcat-9.0.65.tar.gz \
  && tar xvzf apache-tomcat-9.0.65.tar.gz --strip-components 1 --directory /opt/tomcat \
  && rm apache-tomcat-9.0.65.tar.gz
CMD ["/opt/tomcat/bin/catalina.sh","run"]
