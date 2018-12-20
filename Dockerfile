FROM httpd:latest

MAINTAINER Manuel Mink: 1.0

COPY ./html/ /usr/local/apache2/htdocs/

CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]