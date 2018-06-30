#!/bin/sh

/usr/bin/spamd -x &
/usr/sbin/clamd --foreground=true &
/usr/sbin/p0f -s /tmp/.p0f_socket &
/usr/sbin/opendmarc -c /etc/opendmarc.conf
/usr/sbin/opendkim -x /etc/opendkim.conf
/usr/bin/redis-server /etc/redis.conf &
/node_modules/Haraka/bin/haraka -c /srv/haraka

if [[ $1 == "-d" ]]; then
  while true; do sleep 1000; done
fi

if [[ $1 == "-bash" ]]; then
  /bin/bash
fi
