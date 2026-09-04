#!/bin/bash

git clone https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter

sed -i '1i src-git modem https://github.com/fildunsky/luci-app-5gmodem.git' feeds.conf.default

sed -i '2i src-git fancontrol https://github.com/JiaY-shi/fancontrol.git' feeds.conf.default

sed -i '3i src-git smpackage https://github.com/kenzok8/small-package.git' feeds.conf.default

rm -rf feeds/smpackage/{base-files,dnsmasq,firewall*,fullconenat,libnftnl,nftables,ppp,opkg,ucl,upx,vsftpd*,miniupnpd-iptables,wireless-regdb}
