FROM 1000kit/base

MAINTAINER 1000kit <docker@1000kit.org>

LABEL Vendor="1000kit" \
      License=GPLv3 \
      Version=1.0.0
  
USER root
  
ADD run-httpd.sh /root/run-httpd.sh  
# Install packages necessary to run apache
RUN  yum update -y \
   && yum -y install httpd \
   && yum clean all \
   && chmod -v +x /root/run-httpd.sh     


EXPOSE 80

VOLUME /var/www/html

CMD ["/root/run-httpd.sh"]
      
#END