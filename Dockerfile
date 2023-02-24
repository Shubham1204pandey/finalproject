FROM rupeshsaini09/centos
RUN yum install httpd unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page288/foste.zip /var/www/html
WORKDIR /var/www/html
RUN unzip foste.zip
RUN rm -rf foste.zip
RUN cp -rf html/* .
RUN rm -rf html
EXPOSE 80
CMD httpd -DFOREGROUND
