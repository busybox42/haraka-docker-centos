[![](https://images.microbadger.com/badges/image/busybox42/haraka-docker-centos.svg)](https://microbadger.com/images/busybox42/haraka-docker-centos "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/busybox42/haraka-docker-centos.svg)](https://microbadger.com/images/busybox42/haraka-docker-centos "Get your own version badge on microbadger.com")

# haraka-docker-centos
In this repository you will find a default install of Haraka with spamassassin, clamav, opendkim, opendmarc and redis.  

## Downloading the image
The first step is to pull the image.
```bash
docker pull busybox42/haraka-docker-centos
```

## Creating the container
Now that we have the image busybox42/haraka-docker-centos we can create the container with a few parameters.
```bash
docker run --name haraka -p 25:25 -p 587:587 -p 465:465 -h mail.myhost.tld busybox42/harka_docker_centos
```
Name the container, expose the mail ports and set a hostname.

## Configuring your server
The server has installed under /srv/haraka.  You will need to modify the configuration for your installation.  Please see read the Haraka manual for more information: https://haraka.github.io/README.html

## Updating SpamAssassin and ClamAV
During install clamav and spamassassin will be updated.  To keep them up to date if needed you're going to have to do something.  Pick your poison here. There are plenty of ways to accomplish this if you need updates to your spam and av software.

Here is a sample crontab for the root user on a docker host.
```bash
0 */4 * * * docker exec -it haraka /usr/bin/sa-update -D
20 */4 * * * docker exec -it haraka /usr/bin/freshclam
```


