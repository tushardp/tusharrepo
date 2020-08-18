FROM centos:latest
MAINTAINER tushardinkarpawar@gmail.com
RUN yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page253/app.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip app.zip
RUN cp -rvf app/* .
RUN rm -rf app app.zip
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
