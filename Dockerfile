FROM ubuntu:16.04

RUN apt-get -y update
RUN apt-get -y install cmake make git gcc g++ wget libssl-dev libncurses-dev vim zsh tmux
# RUN apt-get -y install zlib1g-dev
RUN mkdir -p /root/src
WORKDIR /root/src
RUN wget https://dev.mysql.com/get/Downloads/MySQL-8.0/mysql-8.0.11.tar.gz
RUN tar xvfz mysql-8.0.11.tar.gz
WORKDIR /root/src/mysql-8.0.11
RUN cmake . -DDEFAULT_CHARSET=utf8 -DDEFAULT_COLLATION=utf8_general_ci -DWITH_INNOBASE_STORAGE_ENGINE=1 -DENABLED_LOCAL_INFILE=1 -DDOWNLOAD_BOOST=1 -DWITH_BOOST=/home/src/boost
RUN make
RUN make install
RUN groupadd mysql
RUN useradd -r -g mysql mysql
RUN /usr/local/mysql/bin/mysqld --basedir=/usr/local/mysql --datadir=/usr/local/mysql/data --user=mysql --log-error-verbosity=3 --initialize-insecure
RUN chown -R mysql:mysql /usr/local/mysql
RUN cp /usr/local/mysql/support-files/mysql.server /etc/init.d/mysqld

RUN touch /etc/my.cnf
RUN echo "[mysqld]\ndefault_authentication_plugin = mysql_native_password" >> /etc/my.cnf

## start
#RUN /etc/init.d/mysqld start

# attach
#RUN /usr/local/mysql/bin/mysql -u root -p

# 古いRed Hatシステムでは`/etc/rc.d/init.d/mysqld`となる
#RUN cp /usr/local/mysql/support-files/mysql.server /etc/rc.d/init.d/mysqld
#RUN /etc/rc.d/init.d/mysqld start
