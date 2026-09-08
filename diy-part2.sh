#!/bin/bash

# 设置默认IP为 192.168.100.1
sed -i 's/192.168.1.1/192.168.100.1/g' package/base-files/files/bin/config_generate

# 修改主机名
sed -i "s/hostname='LEDE'/hostname='H69K'/g" package/base-files/files/bin/config_generate

# 修改语言时区
sed -i "s/timezone='GMT0'/timezone='CST-8'/g" package/base-files/files/bin/config_generate
sed -i "s/zonename='UTC'/zonename='Asia\/Shanghai'/g" package/base-files/files/bin/config_generate

# 删除默认密码
sed -i 's/root:::0:99999:7:::/root::0:99999:7:::/g' package/base-files/files/etc/shadow

# AdGuardHome
sed -i "s/aarch64|arm64)/aarch64|arm64|aarch64_generic)/g" feeds/smpackage/luci-app-adguardhome/root/usr/share/AdGuardHome/update_core.sh

# Openlist
sed -i "s/option enabled '0'/option enabled '1'/g" feeds/packages/net/openlist/files/openlist.config
sed -i "s/option log_enable '1'/option log_enable '0'/g" feeds/packages/net/openlist/files/openlist.config

# OpenAppFilter
sed -i "s/option disable_hnat '0'/option disable_hnat '1'/g" package/luci-app-oaf/open-app-filter/files/appfilter.config

# Qmodem
sed -i "s/option enable_pcie_scan '1'/option enable_usb_scan '1'/g" feeds/qmodem/application/qmodem/files/etc/config/qmodem

rm -rf feeds/smpackage/{base-files,dnsmasq,firewall*,fullconenat,libnftnl,nftables,ppp,opkg,ucl,upx,vsftpd*,miniupnpd-iptables,wireless-regdb}
