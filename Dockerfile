FROM centos:7

RUN yum install -y httpd zip unzip

ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /tmp/

WORKDIR /tmp

RUN unzip photogenic.zip

EXPOSE 80

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
