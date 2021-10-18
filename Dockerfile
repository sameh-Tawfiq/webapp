FROM centos
MAINTAINER sameh.tawfiq@orange.com
RUN yum -y install httpd
RUN yum -y install git
RUN git clone https://github.com/sameh-Tawfiq/webapp.git
RUN cp webapp/index.html /var/www/html/index.html
EXPOSE 80
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
