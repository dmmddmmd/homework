*******************************************************************************************************
Подготовка стенда
*******************************************************************************************************
apt update
apt install git -y
apt install docker.io -y
-- apt install maven -y

cd ~
-- git clone https://github.com/shephertz/App42PaaS-Java-MySQL-Sample.git

wget https://github.com/docker/compose/releases/download/v2.9.0/docker-compose-linux-x86_64
mv docker-compose-linux-x86_64 /bin/docker-compose
chmod +x /bin/docker-compose

nano /root/App42PaaS-Java-MySQL-Sample/pom.xml
* изменить версию mysql-connector-java с 5.1.8 на 8.0.27
* maven-compiler-plugin c 1.6 на 1.7
* maven-war-plugin с 2.3 на 3.3.2

nano /root/App42PaaS-Java-MySQL-Sample/WebContent/Config.properties
* изменить параметры подключения к БД

*******************************************************************************************************
Сборка образа приложения и публикация его в Docker Hub
*******************************************************************************************************
cd ~
git clone https://github.com/dmmddmmd/homework.git

cd ~/homework
git pull
docker build -t "dtimerman/work12:latest" ~/homework/work12/App

docker login
docker push dtimerman/work12:latest

*******************************************************************************************************
Деплой посредством docker-compose
*******************************************************************************************************
cd ~/homework/work12
docker-compose up -d

docker-compose --project-directory=~/homework/work12 up -d

http://84.252.139.193:8080/App42PaaS-Java-MySQL-Sample-0.0.1-SNAPSHOT/








allowPublicKeyRetrieval=true
useSSL=false

*******************************************************************************************************
Ссылки
*******************************************************************************************************
https://github.com/shephertz/App42PaaS-Java-MySQL-Sample
https://hub.docker.com/_/mysql
https://hub.docker.com/_/mariadb