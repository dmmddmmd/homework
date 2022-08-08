Связать ключами ноды.

apt install ansible
apt install git

cd /root
git clone https://github.com/dmmddmmd/homework.git

nano /etc/ansible/hosts
* добавить в конец файла:
[dev]
10.129.0.13
[prod]
10.129.0.35

ansible all -m ping

cd /root/homework/
git pull
cd /root/homework/work8/
ansible-playbook work8.yml