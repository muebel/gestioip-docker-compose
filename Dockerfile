# v0.3 20201112

FROM ubuntu:20.04

MAINTAINER Marc Uebel <contact@gestioip.net>

## get files
ADD gestioip /gestioip_install

WORKDIR /gestioip_install

RUN tar zxf ./gestioip_3.5.tar.gz
RUN cp ./conf/setup.conf ./gestioip_3.5/conf/

RUN DEBIAN_FRONTEND=noninteractive apt-get -y update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install apt-utils && \ 
    DEBIAN_FRONTEND=noninteractive apt-get -y install wget sudo

RUN cd gestioip_3.5 && ./setup_gestioip.sh
RUN cd gip_backup_server && ./install_backup_server.sh
RUN rm /etc/apache2/sites-enabled/000-default.conf

# entrypoint script to configure the database parameter
ENTRYPOINT ["/gestioip_install/script/change_gip_parameter.sh"]

# Manually set up the apache environment variables
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2
ENV APACHE_PID_FILE /var/run/apache2.pid

# forward request and error logs to docker log collector
RUN ln -sf /dev/stdout /var/log/apache2/access.log \
    && ln -sf /dev/stderr /var/log/apache2/error.log

# Expose apache.
EXPOSE 80
#EXPOSE 443

# By default start up apache in the foreground
CMD /usr/sbin/apache2ctl -D FOREGROUND
