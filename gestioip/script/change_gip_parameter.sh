#!/bin/bash

# Script to update the GestioIP configuration with the database
# parameters found in the evironment file when running a container
# the first time

# v1.0 20210119


if [ ! -f .initialized ]
then
    IP_CONFIG="/var/www/html/gestioip/priv/ip_config"

    /bin/sed -i "s/bbdd_host=\(.*\)/bbdd_host=${DB_HOST}/" $IP_CONFIG
    /bin/sed -i "s/db_port=\(.*\)/db_port=${DB_PORT}/" $IP_CONFIG
    /bin/sed -i "s/sid=\(.*\)/sid=${DB_SSID}/" $IP_CONFIG
    /bin/sed -i "s/user=\(.*\)/user=${DB_USER}/" $IP_CONFIG
    /bin/sed -i "s/password=\(.*\)/password=${DB_PASSWORD}/" $IP_CONFIG

    if [ "${BCK_USER_DISABLED}" = "yes" ]
    then
        # disable account
        usermod -s /sbin/nologin ${BCK_USER}

        # disable tftp server
        /bin/sed -i "s/disable = no/disable = yes/" /etc/xinetd.d/tftp
        service xinetd restart

        # disable ftp server
        if [ -e "/etc/init.d/vsftpd" ]
        then
            systemctl stop vsftpd
            systemctl disable vsftpd
        fi

    else
        # change backup user password
        echo "${BCK_USER}:${BCK_USER_PASS}" | chpasswd
    fi

    touch .initialized
fi

unset DB_USER
unset DB_PASSWORD
unset BCK_USER_PASS

exec "$@"
