FROM openjdk:8u151-stretch
RUN apt-get update \
&& apt-get install -y apt-utils \
&& apt-get install -y maven \
&& apt-get install -y git

# Install docker 18.03
RUN apt-get -y install apt-transport-https ca-certificates curl gnupg2 software-properties-common
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
RUN apt-get update
RUN apt-get -y install docker-ce

# Clear cache
RUN apt-get clean
