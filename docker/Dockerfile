#################################################################
# Dockerfile to build a Haraka container image
# Based on CentOS 7
# Created by Alan Denniston
#################################################################
FROM centos:latest
MAINTAINER Alan Denniston <alan.denniston@gmail.com>

RUN yum install -y epel-release && yum update -y --nogpgcheck && yum install -y --nogpgcheck \
  node \
  gcc-c++ \
  make \
  spamassassin \
  clamav-server \
  clamav-update \
  opendmarc \
  opendkim \
  nodejs \
  redis \
  net-tools \
  telnet \
  git \
  p0f \
  bsdtar \
  && yum clean all \
  && yum clean metadata \
  && /usr/bin/npm install Haraka

VOLUME ["/srv/haraka"]

EXPOSE 25:25 587:587 465:465

COPY opt /opt/

CMD ["sh", "/opt/start.sh", "-bash"]
