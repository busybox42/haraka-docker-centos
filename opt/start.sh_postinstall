#!/bin/sh

/usr/share/clamav/freshclam-sleep &
/usr/sbin/clamd --foreground=true &
/usr/bin/spamd -x &
/usr/sbin/opendmarc -c /etc/opendmarc.conf
# Add your own conf and ssl certs 
#/usr/sbin/opendkim -x /etc/opendkim.conf
# TODO
#/usr/local/bin/dmarc_httpd &
/usr/bin/redis-server /etc/redis.conf &
/node_modules/Haraka/bin/haraka -c /srv/haraka

if [[ $1 == "-d" ]]; then
  while true; do sleep 1000; done
fi

if [[ $1 == "-bash" ]]; then
  /bin/bash
fi
