#!/bin/sh

# non interactive version
# v3.5.4 20201112

SETUP_LOG="install_backup_server.log"

### TFTP

INSTALL_DIR="/gestioip_install/gip_backup_server/"
BCK_USER_PASS="gestioip"

apt-get -y install xinetd tftpd tftp >> $SETUP_LOG 2>&1

ROOTDIR="/var/lib/tftpboot"
SERVERPRODUCT="tftpd"
APACHEGROUP="www-data"
XINETD_SAMPLE="sample_xinetd_tftp"
XINETD_CONFIG="/etc/xinetd.d/tftp"

apt-get -y install xinetd tftpd tftp >> $SETUP_LOG 2>&1
if [ $? -ne 0 ]
then
	echo "Error installing ${SERVERPRODUCT} - aborting installation" >> $SETUP_LOG
	echo "Error installing ${SERVERPRODUCT} - aborting installation"
	exit 1
fi

cp ${XINETD_CONFIG} ${XINETD_CONFIG}.orig > /dev/null 2>&1
cp ${INSTALL_DIR}/${XINETD_SAMPLE} ${XINETD_CONFIG} >> $SETUP_LOG 2>&1
if [ $? -ne 0 ]
then
	echo "Error creating ${SERVERPRODUCT} configuration - aborting installation" >> $SETUP_LOG
	echo "Error creating ${SERVERPRODUCT} configuration - aborting installation"
	exit 1
fi

if [ ! -e ${ROOTDIR} ]
then
	mkdir ${ROOTDIR} >> $SETUP_LOG 2>&1
	if [ $? -ne 0 ]
	then
		echo "Error creating root directory ${ROOTDIR} - aborting installation" >> $SETUP_LOG
		echo "Error creating root directory ${ROOTDIR} - aborting installation"
		exit 1
	fi
fi

chgrp -R ${APACHEGROUP} ${ROOTDIR} >> $SETUP_LOG 2>&1
if [ $? -ne 0 ]
then
	echo "Error changing owner of tftp root directory - aborting installation" >> $SETUP_LOG
	echo "Error changing owner of tftp root directory - aborting installation"
	exit 1
fi
chmod -R 775 ${ROOTDIR} >> $SETUP_LOG 2>&1

service xinetd stop >> $SETUP_LOG 2>&1
service xinetd start >> $SETUP_LOG 2>&1
if [ $? -ne 0 ]
then
	echo "Error starting $SERVER server - aborting installation" >> $SETUP_LOG
	echo "Error starting $SERVER server - aborting installation"
	exit 1
fi
echo
echo "Installation successful"
echo


echo "Use the following values for your CMM configuartion:"
echo
echo "Backup protocol: tftp"
echo "Server root directory: ${ROOTDIR}"
echo


INSTALL_DIR=`pwd`


###########3 FTP SERVER

ROOTDIR="/srv/ftp"
SERVERPRODUCT="vsftpd"
APACHEGROUP="www-data"
BCK_USER="gestioip-bck"
SAMPLECONFIG="sample_vsftpd.conf"
SERVERCONFIG="/etc/vsftpd.conf"

#TEST
#apt-get -y install vsftpd >> $SETUP_LOG 2>&1
apt-get -y install vsftpd
if [ $? -ne 0 ]
then
	echo "Error installing ${SERVERPRODUCT} - aborting installation" >> $SETUP_LOG
	echo "Error installing ${SERVERPRODUCT} - aborting installation"
	exit 1
fi

# bug fix for ubuntu init script
cp ./sample_vsftpd_init_ubuntu /etc/init.d/vsftpd

cp ${SERVERCONFIG} ${SERVERCONFIG}.orig > /dev/null 2>&1

#        cp ${INSTALL_DIR}/${SAMPLECONFIG} ${SERVERCONFIG} >> $SETUP_LOG 2>&1
#        if [ $? -ne 0 ]
#        then
#            echo "Error creating ${SERVERPRODUCT} configuration - aborting installation" >> $SETUP_LOG
#            echo "Error creating ${SERVERPRODUCT} configuration - aborting installation"
#            exit 1
#        fi

sed -E -i 's/(listen.*=).*/\1YES/' ${SERVERCONFIG} >> $SETUP_LOG 2>&1
if [ $? -ne 0 ]
then
	echo "Error creating ${SERVERPRODUCT} configuration - aborting installation" >> $SETUP_LOG
	echo "Error creating ${SERVERPRODUCT} configuration - aborting installation"
	exit 1
fi
sed -E -i 's/#?(listen_ipv6.*=).*/\1NO/' ${SERVERCONFIG} >> $SETUP_LOG 2>&1
sed -E -i 's/#?(local_enable.*=).*/\1YES/' ${SERVERCONFIG} >> $SETUP_LOG 2>&1
sed -E -i 's/#?(anonymous_enable.*=).*/\1NO/' ${SERVERCONFIG} >> $SETUP_LOG 2>&1
sed -E -i 's/#?(local_umask.*=).*/\10002/' ${SERVERCONFIG} >> $SETUP_LOG 2>&1
sed -E -i 's/#?(write_enable.*=).*/\1YES/' ${SERVERCONFIG} >> $SETUP_LOG 2>&1
# ubuntu 14.04, 17, debian 7
sed -E -i 's/#?(pam_service_name.*=).*/\1ftp/' ${SERVERCONFIG} >> $SETUP_LOG 2>&1

echo "Creating FTP user ${BCK_USER}"
useradd -G ${APACHEGROUP} -d ${ROOTDIR} ${BCK_USER} >> $SETUP_LOG 2>&1
grep ${BCK_USER} /etc/passwd >> $SETUP_LOG 2>&1
if [ $? -ne 0 ]
then
	echo "Error creating user ${BCK_USER} - aborting installation" >> $SETUP_LOG
	echo "Error creating user ${BCK_USER} - aborting installation"
	exit 1
fi

#       passwd ${BCK_USER}
echo "${BCK_USER}:${BCK_USER_PASS}" | chpasswd

chown ${BCK_USER}:${APACHEGROUP} ${ROOTDIR} >> $SETUP_LOG 2>&1
if [ $? -ne 0 ]
then
	echo "Error changing owner of ${ROOTDIR} - aborting installation" >> $SETUP_LOG
	echo "Error changing owner of ${ROOTDIR} - aborting installation"
	exit 1
fi

chmod 770 ${ROOTDIR} >> $SETUP_LOG 2>&1

if [ -x /etc/init.d/vsftpd ]
then
	# (10.04)
# TEST
    echo /etc/init.d/vsftpd restart
#	/etc/init.d/vsftpd restart >> $SETUP_LOG 2>&1
	/etc/init.d/vsftpd restart
else
	# (>=12.04)
# TEST
    echo service vsftpd restart
#	service vsftpd restart >> $SETUP_LOG 2>&1
	service vsftpd restart
	service vsftpd status
fi

if [ $? -ne 0 ]
then
	echo "Error starting ${SERVERPRODUCT} - aborting installation" >> $SETUP_LOG
	echo "Error starting ${SERVERPRODUCT} - aborting installation"
	exit 1
fi


echo
echo "Installation successful"
echo
echo "Use the following values for your CMM configuartion:"
echo
echo "Backup protocol: ftp"
echo "Server root directory: ${ROOTDIR}"
echo "Username: ${BCK_USER}"
echo
exit 0


### SSH


ROOTBASE="/home/gestioip-scp-bck"
#       ROOTDIR="${ROOTBASE}/gestioip-backup"
ROOTDIR=${ROOTBASE}
SERVERPRODUCT="openssh-server"
APACHEGROUP="www-data"
BCK_USER="gestioip-scp-bck"

apt-get -y install openssh-server >> $SETUP_LOG 2>&1
if [ $? -ne 0 ]
then
	echo "Error installing ${SERVERPRODUCT} - aborting installation" >> $SETUP_LOG
	echo "Error installing ${SERVERPRODUCT} - aborting installation"
	exit 1
fi

if [ ! -e ${ROOTBASE} ]
then
	mkdir -p ${ROOTBASE} >> $SETUP_LOG 2>&1
	if [ $? -ne 0 ]
	then
		echo "Error creating root directory ${ROOTBASE} - aborting installation" >> $SETUP_LOG
		echo "Error creating root directory ${ROOTBASE} - aborting installation"
		exit 1
	fi
fi

echo "Creating SCP user ${BCK_USER}"
useradd -G ${APACHEGROUP} -d ${ROOTBASE} ${BCK_USER} >> $SETUP_LOG 2>&1
grep ${BCK_USER} /etc/passwd >> $SETUP_LOG 2>&1
if [ $? -ne 0 ]
then
	echo "Error creating user ${BCK_USER} - aborting installation" >> $SETUP_LOG
	echo "Error creating user ${BCK_USER} - aborting installation"
	exit 1
fi

echo "${BCK_USER}:${BCK_USER_PASS}" | chpasswd

chown -R ${BCK_USER}:${APACHEGROUP} ${ROOTBASE} >> $SETUP_LOG 2>&1
if [ $? -ne 0 ]
then
	echo "Error changing owner of ${ROOTBASE} - aborting installation" >> $SETUP_LOG
	echo "Error changing owner of ${ROOTBASE} - aborting installation"
	exit 1
fi
chmod -R 770 ${ROOTBASE} >> $SETUP_LOG 2>&1


echo
echo "Installation successful"
echo
echo "Use the following values for your CMM configuartion:"
echo
echo "Backup protocol: scp"
echo "Server root directory: ${ROOTBASE}"
echo "Username: ${BCK_USER}"
echo
exit 0
fi
