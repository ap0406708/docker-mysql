FROM mysql:5.7
COPY ./install_data.sh /docker-entrypoint-initdb.d/install_data.sh
COPY ./sql/*.sql /opt/
COPY ./mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf