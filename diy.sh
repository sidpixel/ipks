#=================================================
# https://github.com/sidpixel/ipks
# Description: Build OpenWrt using GitHub Actions
# Lisence: MIT
# Author: sidpixel
#=================================================


# pull openwrt 
git clone  https://github.com/openwrt/openwrt


# 拉取oaf流控插件
git clone https://github.com/destan19/OpenAppFilter.git openwrt/package/OpenAppFilter

 cd openwrt
./scripts/feeds update -a
./scripts/feeds install -a
make defconfig
#make V=s
echo "CONFIG_TARGET_x86=y" >.config
echo "CONFIG_TARGET_x86_64=y" >>.config
echo "CONFIG_PACKAGE_luci-app-oaf=y" >>.config  
make package/OpenAppFilter/luci-app-oaf/compile V=s  
#定义时间变量
echo "FILE_DATE=$(date +%Y%m%d%H%M)" >>"$GITHUB_ENV"
