apt update
apt install git docker.io

git config --global user.name "Dmitry"
git config --global user.email dmmd@mail.ru
git init

cd ~
git clone https://github.com/dmmddmmd/homework.git
cd homework/work6/
docker build -t "work6:1.0" .
docker run -d -p 80:8080 "work6:1.0"
