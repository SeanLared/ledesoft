#!/bin/sh

mkdir -p $KSROOT/init.d
mkdir -p /tmp/upload

cp -rf /tmp/kuainiao/scripts/* /koolshare/scripts/
cp -rf /tmp/kuainiao/webs/* /koolshare/webs/
cp -rf /tmp/kuainiao/res/* /koolshare/res/
cp -rf /tmp/kuainiao/init.d/* /koolshare/init.d/
rm -rf /tmp/kuainiao* >/dev/null 2>&1

chmod a+x /koolshare/scripts/kuainiao_config.sh
chmod a+x /koolshare/scripts/kuainiao_keep.sh
chmod a+x /koolshare/init.d/S98kuainiao.sh

dbus set softcenter_module_kuainiao_install=1
dbus set softcenter_module_kuainiao_version=0.1
dbus set softcenter_module_kuainiao_description="上网带宽加速服务"
rm -rf /koolshare/install.sh
