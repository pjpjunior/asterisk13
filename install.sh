yum update -y && yum install -y make wget svn openssl-devel ncurses-devel newt-devel libxml2-devel kernel-devel gcc gcc-c++ sqlite-devel libuuid-devel ntp perl perl-libwww-perl sox cpan mpg123 ffmpeg openssl openssl-devel sudo git iptables-services bzip2 clang && ntpdate a.ntp.br && chkconfig ntpd on  && reboot                         
// sed -i s/SELINUX=enforcing/SELINUX=disabled/g /etc/selinux/config



*********************************

yum install -y epel-release dmidecode gcc-c++ ncurses-devel libxml2-devel make wget openssl-devel newt-devel kernel-devel sqlite-devel libuuid-devel gtk2-devel jansson-devel binutils-devel iptables-services


yum install -y ncurses-devel openssl-devel unzip git iptables-services bzip2

yum -y groupinstall "Development Tools"



******************************************




yum -y install libedit-devel sqlite-devel psmisc gmime-devel ncurses-devel libtermcap-devel sox newt-devel libxml2-devel libtiff-devel audiofile-devel gtk2-devel uuid-devel libtool libuuid-devel subversion kernel-devel kernel-devel-$(uname -r) git subversion kernel-devel crontabs cronie cronie-anacron wget vim sudo iptables-services bzip2 clang gcc-c++




iptables -A INPUT -p udp --dport 5060 -j ACCEPT && iptables -A INPUT -p udp --dport 10000:20000 -j ACCEPT && service iptables save



install asterisk

cd /usr/src/ && git clone -b 13 http://gerrit.asterisk.org/asterisk asterisk13 && cd asterisk13

./configure --libdir=/usr/lib64 --with-jansson-bundled && make menuselect && make && make install && make samples && make config && make clean && make distclean && service asterisk start



adduser asterisk && passwd asterisk 

chown -R asterisk:asterisk /var/lib/asterisk/ && chown -R asterisk:asterisk /var/spool/asterisk/ && chown -R asterisk:asterisk /var/log/asterisk/ && chown -R asterisk:asterisk /var/run/asterisk/ && chown -R asterisk:asterisk /usr/sbin/asterisk && chown -R asterisk:asterisk /var/lib/asterisk/sounds/ && chown -R asterisk:asterisk /etc/asterisk



