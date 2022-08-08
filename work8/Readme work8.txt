Связать ключами ноды.

apt install ansible
apt install git

cd /root
git clone https://github.com/dmmddmmd/homework.git
cd homework
git pull

nano /etc/ansible/hosts
* добавить в конец файла:
[dev]
10.129.0.13
[prod]
10.129.0.35

