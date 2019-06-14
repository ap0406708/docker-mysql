#20190613-docker mysql

#从容器内拷贝文件到主机上
docker cp <containerId>:/file/path/within/container /host/path/target

#docker 宿主机与容器间复制文件
docker cp test.txt container:/home/
# 将当前目录的test.txt文件复制到container容器的/home目录下
docker cp container:/home/test.txt /home/
# 将container容器内文件复制到宿主机

# 0.卸载已有的mysql 
# yum remove mysql*

netstat -ntpl |grep 3306

#云服务器 java+tomcat 部署与配置
vi /etc/rc.d/rc.local
touch /var/lock/subsys/local
sudo service mysqld start
sudo /usr/local/java/tomcat9/bin/startup.sh

mkdir db Achievements
#建两个文件夹

#CentOS 7-Zip安装与命令用法
yum -y install bzip2 
yum -y install wget

#CentOS下g++: command not found问题的解决
yum -y install gcc
yum -y update gcc
yum -y install gcc+ gcc-c++

wget -c http://downloads.sourceforge.net/project/p7zip/p7zip/9.20.1/p7zip_9.20.1_src_all.tar.bz2 
tar -xjvf p7zip_9.20.1_src_all.tar.bz2 
cd p7zip_9.20.1 
make && make install 

#压缩
7za a 压缩包.7z 被压缩文件或目录
#解压
7za x 压缩包.7z

#Docker-Compose安装
curl -L https://github.com/docker/compose/releases/download/1.25.0-rc1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
3.7	18.06.0+
docker-compose version

cat /etc/redhat-release #查看CentOS版本 
yum list docker-ce --showduplicates | sort -r

#查看docker版本是 19.03.0-beta5
#centos版本是 3.10.0-957.12.2.el7.x86_64
#解决版本：降低docker-ce的版本。
cat /etc/redhat-release
CentOS release 5.4 (Final)
uname -r   
docker --version

docker-ce-18.09.1
sudo yum install docker-ce-18.09.1 docker-ce-cli-18.09.1  containerd.io
#安装18的可以，最新19的就run hello报错

yum list installed | grep docker
#已安装的

docker container ls -a 
docker rm naughty_newton focused_sanderson

#centos安装python
wget https://www.python.org/ftp/python/3.5.3/Python-3.5.3.tar.xz

nohup python3 -u flush.py > flush.log 2>&1 &
nohup python3 manage.py runserver 0.0.0.0:8000 &  
nohup python3 manage.py runserver 0.0.0.0:5008  > flush.log 2>&1 &

pip3 install  django
pip3 install Django==2.1.5
python3 -m django --version

#如何自动生成和安装requirements.txt依赖
pip install pipreqs
pipreqs ./ --encoding=utf8
pip3 install -r requirements.txt

python manage.py migrate --fake
python manage.py makemigrations 
python manage.py migrate

#修改MySQL变量FOREIGN_KEY_CHECKS
-- 禁用外键约束
SET FOREIGN_KEY_CHECKS = 0
-- 启用外键约束
SET FOREIGN_KEY_CHECKS = 1;

#由于FOREIGN_KEY_CHECKS是基于session的，当关闭了session重新建立连接，这个变量就会恢复默认值，也就是开启外键约束，当然我们也可以全局的FOREIGN_KEY_CHECKS变量

#Django---orm多表操作
#数据库加了外键，用命令生成类，就OK     inspectdb 

#一、如果java定义了jar包的main class入口，则使用如下命令
$ java -jar myjar.jar

#二、如果Java没有定义jar的main class入口，则使用如下命令
$ java -cp myjar.jar com.example.MainClass

#使用 Jetty Maven 插件启动本地 Jetty 网络服务器：
mvn appengine:run

#设置 Python 开发环境
> py
# Starts the latest version of Python you installed (Python 3.6.3)
> py -2
# Starts the latest version of Python 2 you installed (Python 2.7.13)
> py -3
# Starts the latest version of Python 3 you installed (Python 3.6.3)
> pip --version
pip 9.0.1 from  c:\python27\lib\site-packages (Python 2.7.13)
> pip3 --version
pip 9.0.1 from c:\users\[USERNAME]\appdata\local\programs\python\python36-32\lib\site-packages (python 3.6)

python -m django --version
python -m pip install --upgrade django==2.1.4

nohup java -jar mailbox-signal-1.0-SNAPSHOT.jar > mailbox.log 2>&1 &

#Django 安装
pip install Django==2.1.5
python
>>> import django
>>> django.get_version()
python -m django --version
django-admin startproject mysite

python odoo-bin scaffold Academy my-modules

python --version
python -m django --version

#三种命令一样
$ django-admin <command> [options]
$ manage.py <command> [options]
$ python -m django <command> [options]

#在Django中如何正确完整地删除一个App
manage.py migrate AdminApp zero

#django 报错 no such table: auth_user
python3 manage.py makemigrations
python3 manage.py migrate

#你可以通过命令 python manage.py createsuperuser 来创建超级用户 
python manage.py createsuperuser

$ python manage.py makemigrations TestModel  # 让 Django 知道我们在我们的模型有一些变更
$ python manage.py migrate TestModel   # 创建表结构





