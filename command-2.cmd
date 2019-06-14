#20190613-docker mysql
#"docker build" requires exactly 1 argument.
docker build -t jancky/mysql:v1      //error
docker build -t jancky/mysql:v1 .    //add one . ==> ok

################################################################################
docker run -d -p 3306:3306 mysql:5.7
docker container ls -a 
#= 
docker ps -a
reboot
#退出正在运行的容器，想要再次进入，需要使用attach命令：
docker attach name | id

docker run -i -t -d ubuntu:latest
docker attach a529af5f06c8

root@a529af5f06c8:/# ifconfig -a
bash: ifconfig: command not found

root@a529af5f06c8:/# date
Fri Jun 14 04:23:58 UTC 2019

root@a529af5f06c8:/# exit


################################################################################
#docker 如何删除某个镜像下的所有容器

docker rm $(docker ps -a | awk '/training\/webapp/ {print $1}')
docker rm $(docker ps -a | awk 'mysql\:5.7 {print $1}')   //error
[root@instance-tw 2019code]# docker rm $(docker ps -a | awk '/mysql\:5.7/ {print $1}')
eb04527c1530
c8f6d8967e7c
d024f4e5eee1

################################################################################
#docker批量删除容器、镜像
#1、删除所有容器
docker rm `docker ps -a -q`
#2、删除所有镜像
docker rmi `docker images -q`


################################################################################
#docker启动Mysql

[root@instance-tw 2019code]# docker run mysql:5.7
error: database is uninitialized and password option is not specified 
You need to specify one of MYSQL_ROOT_PASSWORD, MYSQL_ALLOW_EMPTY_PASSWORD and MYSQL_RANDOM_ROOT_PASSWORD

sudo docker run  -e MYSQL_ROOT_PASSWORD=12345678@Qq --name mysql -d mysql:5.7
sudo docker run -p 3306:3306 -e MYSQL_ROOT_PASSWORD=12345678@Qq --name mysql -d mysql:5.7


################################################################################
#docker attach无法附上，卡住了
docker exec -it 1e0ca309e382 /bin/bash 

[ap0406708@instance-tw ~]$ docker attach 19f8491a76ed
Current dir: /var/lib/mysql/
Running threads: 1 Stack size: 262144
Current locks:
lock: 0x56478f25fc40:
lock: 0x56478f210e60:


################################################################################
#linux 进入 mysql
mysql -uroot -p

show databases; 

CREATE USER 'root'@'%' IDENTIFIED BY 'password';    //error ???已有 'root'@'%' user ?
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;

INSERT INTO mysql.user (Host,User,Password) VALUES('%','system', PASSWORD('12345678@Qq'));
 flush privileges; 

//OK
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '12345678@Qq' WITH GRANT OPTION;
flush privileges; 

GRANT ALL PRIVILEGES ON %s.* TO '%s'@'%s' IDENTIFIED BY '%s'

################################################################################
#docker安装后出现Cannot connect to the Docker daemon.
#因为，我忘记启动docker这个服务了。
service docker start

su root # 先切换到root用户, 再执行以下命令
systemctl enable docker # 开机自动启动docker

systemctl start docker # 启动docker
systemctl restart docker # 重启dokcer


################################################################################
#启动 mysql 容器，并进入 shell 命令交互界面： docker run -it mysql /bin/bash
#下载mysql5.7镜像
sudo docker pull mysql:5.7
#绑定3306端口启动
sudo docker run -p 3306:3306 -e MYSQL_ROOT_PASSWORD=123456 -d mysql:5.7







