FROM centos:7
MAINTAINER pmslmaurya@gmail.com
RUN yum install -y httpd\
zip\
unzip
ADD https://www.free-css.com/assets/files/free-css-template/download/page254/photogenic.zip/var/www/html
WORKDIR /var/www/html/
RUN unzip photogenic.zip
RUN cp-rvf photogenic/*
RUN rm -rf photogenic photogenic.zip
CMD["/usr/bin/httpd","-D","FORGROUND"]
EXPOSE 80
