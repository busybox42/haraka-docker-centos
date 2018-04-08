#!/bin/sh

/usr/share/clamav/freshclam-sleep &
/usr/sbin/clamd --foreground=true &
/usr/bin/spamd -x &
/usr/sbin/opendmarc -c /etc/opendmarc.conf
/usr/bin/redis-server /etc/redis.conf &
/node_modules/Haraka/bin/haraka -i /srv/haraka
cp /opt/start.sh_postinstall /opt/start.sh
/node_modules/Haraka/bin/haraka -c /srv/haraka

if [[ $1 == "-d" ]]; then
  while true; do sleep 1000; done
fi

if [[ $1 == "-bash" ]]; then
  /bin/bash
fi
