FROM httpd:latest

MAINTAINER Manuel Mink: 1.0

COPY ./html/ /usr/local/apache2/htdocs/
COPY run_tests.sh /bin/run_tests.sh

CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]