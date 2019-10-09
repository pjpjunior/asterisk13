centos7
http://li.nux.ro/download/nux/dextop/el7/x86_64/nux-dextop-release-0-5.el7.nux.noarch.rpm

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


old
cd /usr/src/ && wget http://downloads.asterisk.org/pub/telephony/asterisk/old-releases/asterisk-11.25.3.tar.gz && tar -zxvf asterisk-11.25.3.tar.gz && rm -rf cd /asterisk-11.25.3.tar.gz && cd /usr/src/asterisk-11* && ./configure --libdir=/usr/lib64 && make menuselect && make && make install && make samples && make config && make clean && make distclean && service asterisk start 


google tts

cd /tmp && wget https://github.com/zaf/asterisk-speech-recog/archive/master.tar.gz && tar -zxvf master.tar.gz && cd asterisk-speech-recog-master && cp -rf *.agi /var/lib/asterisk/agi-bin/


adduser asterisk && passwd asterisk 

chown -R asterisk:asterisk /var/lib/asterisk/ && chown -R asterisk:asterisk /var/spool/asterisk/ && chown -R asterisk:asterisk /var/log/asterisk/ && chown -R asterisk:asterisk /var/run/asterisk/ && chown -R asterisk:asterisk /usr/sbin/asterisk && chown -R asterisk:asterisk /var/lib/asterisk/sounds/ && chown -R asterisk:asterisk /etc/asterisk



