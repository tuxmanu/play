FROM httpd:latest

MAINTAINER Manuel Mink: 1.0

COPY ./html/ /usr/local/apache2/htdocs/
COPY run_tests.sh /bin/run_tests.sh
RUN chmod 755 /bin/run_tests.sh

RUN apt-get install wget telnet


CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]