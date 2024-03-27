# create a base image
FROM centos:7

# dockerfile to contenerize an apache server
LABEL description="Dockerlife to conatiner on apache"

RUN yum update -y

RUN yum install -y httpd

COPY index.html /var/www/html

EXPOSE 80

ENTRYPOINT [ "/usr/sbin/httpd" ]

CMD [ "-D", "FOREGROUND" ]





