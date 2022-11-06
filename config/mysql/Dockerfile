# image
FROM mysql/mysql-server:8.0

# env setting
ENV MYSQL_DATABASE=laravel \
  MYSQL_USER=phper \
  MYSQL_PASSWORD=secret \
  MYSQL_ROOT_PASSWORD=secret \
  TZ=Asia/Tokyo

# my.cnf setting
COPY ./my.cnf /etc/mysql/conf.d/my.cnf
RUN chmod 644 /etc/mysql/conf.d/my.cnf
