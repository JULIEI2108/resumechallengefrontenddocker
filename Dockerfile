FROM centos:7
LABEL maintainer="JulieJ"
RUN yum -y install httpd
COPY index.html /var/www/html
COPY assets/ /var/www/html/assets
RUN ls /var/www/html/assets/img
COPY css/  /var/www/html/css
COPY js/ /var/www/html/js
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80