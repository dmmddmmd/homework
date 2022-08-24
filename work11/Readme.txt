Инфраструктура с занятия 11
VM 1: Jenkins (RAM 4Gb). Имеет доступ по SSH к VM 2.
VM 2: Для запуска результирующего контейнера.

*******************************************************************************
Установка Jenkins: https://www.jenkins.io/doc/book/installing/linux/#debianubuntu
*******************************************************************************
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins

usermod -a -G docker jenkins
usermod -a -G root jenkins
usermod -a -G sudo jenkins

Установить плагины Jenkins:
- Docker
- Docker plugin
- Docker Pipeline
- SSH Pipeline steps

Создал credentials с ID 'my-root-creds' (для подключения по SSH к VM 2)
Создал credentials с ID 'my-docker-creds' (для использования при подключении к docker hub из скрипта)
* Restart Jenkins


*******************************************************************************
Сборка Docker image 'builder' на VM 1:
*******************************************************************************
git clone https://github.com/dmmddmmd/homework.git /root/homework

cd /root/homework
git pull
docker build /root/homework/work11/builder --tag=dtimerman/work11_builder

docker login
docker push dtimerman/work11_builder:latest

*******************************************************************************
Подготовка перед запуском Jenkins pipeline
*******************************************************************************
cd /root/homework
git pull
