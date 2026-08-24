#!/bin/bash

git clone https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter

sed -i '1i src-git qmodem https://github.com/FUjr/QModem' feeds.conf.default
sed -i '2i src-git fancontrol https://github.com/JiaY-shi/fancontrol' feeds.conf.default

sed -i '3i src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '4i src-git small https://github.com/kenzok8/small' feeds.conf.default