[![](https://images.microbadger.com/badges/image/busybox42/haraka-docker-centos.svg)](https://microbadger.com/images/busybox42/haraka-docker-centos "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/busybox42/haraka-docker-centos.svg)](https://microbadger.com/images/busybox42/haraka-docker-centos "Get your own version badge on microbadger.com")

# haraka-docker-centos
In this repository you will find a default install of Haraka with spamassassin, opendkim, opendmarc and redis.  This is a work in progress.

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

