
FROM ubuntu:12.04

RUN apt-get update
RUN apt-get install -y apache2 php5 libapache2-mod-php5 unzip

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_LOG_DIR2=/var/log/apache2 APACHE_LOG_DIR3=/var/log/apache2

EXPOSE 80

ADD /usr /usr

ADD / /

CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"] 
