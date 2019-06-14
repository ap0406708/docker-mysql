#参考
#https://haosuwei.github.io/2018/03/30/docker-%E5%88%B6%E4%BD%9C%E8%87%AA%E5%AE%9A%E4%B9%89mysql%E9%95%9C%E5%83%8F.html

#docker file
#/docker-entrypoint-initdb.d/install_data.sh 下的 docker-entrypoint-initdb.d 会初始化DB

#del container
docker ps -a 
docker rm 50f727a486cc 92463141d9ae 1389abc1a0f0 308c67b569ab 50932f8ddcee
docker images

=================================================================================
[root@instance-tw mysql-image]# docker rmi a1aa4f76fab9
Error response from daemon: conflict: unable to delete a1aa4f76fab9 (cannot be forced) - image has dependent child images
[root@instance-tw mysql-image]# docker images
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
jancky/mysql        v1                  e02c41002764        34 minutes ago      374MB
mysql               5.7                 a1aa4f76fab9        2 days ago          373MB

=============================================================================
docker build -t jancky/mysql:v1 . 
docker run -p 3306:3306 --name mymysql -v $PWD/conf:/etc/mysql/conf.d -v $PWD/logs:/logs -v $PWD/data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=12345678@Qq -d mysql:5.7

docker run -p 3306:3306 --name mymysql -v $PWD/conf:/etc/mysql/conf.d -v $PWD/logs:/logs -v $PWD/data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=12345678@Qq -d jancky/mysql:v1