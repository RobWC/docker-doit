FROM ubuntu:14.04
MAINTAINER Rob Cameron

EXPOSE 80/tcp
DD policy-rc.d /usr/sbin/policy-rc.d
RUN chmod a+x /usr/sbin/policy-rc.d
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y nginx python-flask python-sqlite python-jinja2
CMD ["/usr/bin/python","-V"]
