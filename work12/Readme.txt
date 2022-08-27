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

*******************************************************************************************************
Ссылки
*******************************************************************************************************
https://hub.docker.com/_/mysql
https://hub.docker.com/_/mariadb