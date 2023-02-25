FROM rupeshsaini09/centos
RUN yum install httpd unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page283/lodge.zip /var/www/html
WORKDIR /var/www/html
RUN unzip lodge.zip
RUN rm -rf lodge.zip
RUN cp -rf lodge-html/* .
RUN rm -rf lodge-html
EXPOSE 80
CMD httpd -DFOREGROUND
