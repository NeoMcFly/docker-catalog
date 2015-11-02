FROM httpd:2.4

CMD apt-get -y install nano

COPY httpd.conf /usr/local/apache2/conf/

CMD ["httpd-foreground"]
