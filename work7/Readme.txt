wget https://github.com/docker/compose/releases/download/v2.9.0/docker-compose-linux-x86_64
mv docker-compose-linux-x86_64 /bin/docker-compose
chmod +x /bin/docker-compose

cd work7
docker-compose up -d
docker-compose cp dev:/root/boxfuse-sample-java-war-hello/target/hello-1.0.war /root/work7_shared_webapps/


