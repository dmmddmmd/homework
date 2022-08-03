Предварительно установить:
wget https://github.com/docker/compose/releases/download/v2.9.0/docker-compose-linux-x86_64
mv docker-compose-linux-x86_64 /bin/docker-compose
chmod +x /bin/docker-compose

cd /root/homework/work7/
chmod +x start.sh
./start.sh

Проверка:
http://{address}/hello-1.0/
