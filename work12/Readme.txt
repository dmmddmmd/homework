*******************************************************************************************************
Подготовка стенда
*******************************************************************************************************
apt update
apt install git -y
apt install docker.io -y

wget https://github.com/docker/compose/releases/download/v2.9.0/docker-compose-linux-x86_64
mv docker-compose-linux-x86_64 /bin/docker-compose
chmod +x /bin/docker-compose

nano /root/App42PaaS-Java-MySQL-Sample/pom.xml
* изменить версию mysql-connector-java с 5.1.8 на 8.0.27
* maven-compiler-plugin,  c 1.6 на 1.7
* maven-war-plugin с 2.3 на 3.3.2

nano /root/App42PaaS-Java-MySQL-Sample/WebContent/Config.properties
* изменить параметры подключения к БД

*******************************************************************************************************
Сборка образов App (для сборки приложения), Prod (стенд для запуска приложения) и публикация их в Docker Hub
*******************************************************************************************************
cd ~
git clone https://github.com/dmmddmmd/homework.git

cd ~/homework
git pull
docker build -t "dtimerman/work12:latest" ~/homework/work12/App
docker build -t "dtimerman/work12_prod:latest" ~/homework/work12/Prod

docker login
docker push dtimerman/work12:latest
docker push dtimerman/work12_prod:latest

*******************************************************************************************************
Деплой посредством docker-compose
*******************************************************************************************************
cd ~/homework
git pull

cd ~/homework/work12
docker-compose rm -f -s -v
docker rmi dtimerman/work12
docker rmi dtimerman/work12_prod

cd ~/homework/work12
docker-compose up -d

http://{IP}:8080/App42PaaS-Java-MySQL-Sample-0.0.1-SNAPSHOT/

*******************************************************************************************************
Доп. информация
*******************************************************************************************************
Для подключения к БД через DBEaver изменить настройки драйвера:
allowPublicKeyRetrieval=true
useSSL=false
-
Tomcat 8.5.82
mysql:latest

*******************************************************************************************************
Ссылки
*******************************************************************************************************
https://github.com/shephertz/App42PaaS-Java-MySQL-Sample
https://hub.docker.com/_/mysql
