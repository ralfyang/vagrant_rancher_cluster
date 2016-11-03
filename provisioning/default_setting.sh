#!/bin/bash
# Script for Default env. of zinst
#!/bin/bash
LANG=en_US.UTF-8
#sed -i '/^LANG=/d' /etc/sysconfig/i18n
#echo 'LANG=en_US.UTF-8' >> /etc/sysconfig/i18n
#sed -i 's/=enforcing/=disabled/g' /etc/selinux/config

#setenforce 0


apt-get 2> /tmp/check_pkgmgmt

	if [[ `(grep "not" /tmp/check_pkgmgmt)` != "" ]];then
		Pkg_mgmt="yum"
	else
		Pkg_mgmt="apt-get"
		apt update
	fi

$Pkg_mgmt install curl -y
$Pkg_mgmt install wget -y
$Pkg_mgmt install vim -y


mkdir -p /root/.ssh
cp -Rfv /tmp/conf.d/* /root/.ssh
