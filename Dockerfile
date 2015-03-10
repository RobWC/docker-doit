FROM ubuntu:14.04
MAINTAINER Rob Cameron

EXPOSE 80/tcp
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y nginx python-flask python-sqlite python-jinja2
CMD ["/usr/sbin/python","-V"]
