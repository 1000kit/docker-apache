# docker image of apache

image of centos containing installed apache version

* volume: /var/www/html
* ports:  80

### Installed versions:

 httpd from centos 7

### created from:
Based on `https://github.com/CentOS/CentOS-Dockerfiles/blob/master/httpd/centos7/`

## Build Image


Take a Dockerfile and build with the default arguments:

~~~~
$ docker build -t 1000kit/apache .
~~~~

or simply use the `build.sh` script

## run

### docker
~~~~
$ docker run -it 1000kit/apache 
~~~~

### docker-compose
Download docker-compose.yml from github. Per default the `~/Download` directory of your user home is used as base. So this can be used to provide downloaded data to other images (e.g. JBoss EAP...)

~~~~
$ docker-compose up 
~~~~

