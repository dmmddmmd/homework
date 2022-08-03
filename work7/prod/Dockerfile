FROM alpine:3.14
RUN apk update \
  && apk add openjdk11-jre-headless
RUN cd /var/ \
  && wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.0.23/bin/apache-tomcat-10.0.23.tar.gz \
  && tar zxvpf apache-tomcat-10.0.23.tar.gz \
  && rm apache-tomcat-10.0.23.tar.gz
CMD ["/var/apache-tomcat-10.0.23/bin/catalina.sh","run"]
