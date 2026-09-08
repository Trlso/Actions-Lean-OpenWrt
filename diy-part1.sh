#!/bin/bash

git clone https://github.com/destan19/OpenAppFilter.git package/luci-app-oaf

sed -i '1i src-git fancontrol https://github.com/JiaY-shi/fancontrol' feeds.conf.default

sed -i '2i src-git smpackage https://github.com/kenzok8/small-package' feeds.conf.default
