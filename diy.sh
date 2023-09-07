#=================================================
# https://github.com/sidpixel/ipks
# Description: Build OpenWrt using GitHub Actions
# Lisence: MIT
# Author: sidpixel
#=================================================

SDK_URL=https://mirrors.tuna.tsinghua.edu.cn/openwrt/releases/22.03.5/targets/x86/generic/openwrt-sdk-22.03.5-x86-generic_gcc-11.2.0_musl.Linux-x86_64.tar.xz
SDK_NAME=openwrt-sdk-22.03.5-x86-generic_gcc-11.2.0_musl.Linux-x86_64.tar.xz
echo ==================download official openwrt source and unarchieve======================
wget  $SDK_URL
tar xvJf  $SDK_NAME -C lede
cd lede
echo =================pull the compile compents=====================
make package/symlinks
echo ==================download the oaf source =========================
git clone https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter
echo ==================compile the oaf module============================
make menuconfig
make package/oaf/compile V=s
make package/open-app-filter/compile V=s
make package/luci-app-oaf/compile V=s


# pull openwrt 
#git clone  https://github.com/openwrt/openwrt 


# 拉取oaf流控插件
#git clone https://github.com/destan19/OpenAppFilter.git openwrt/package/OpenAppFilter

# cd openwrt
#./scripts/feeds update -a
#./scripts/feeds install -a
#make defconfig
#make V=s
#echo "CONFIG_TARGET_x86=y" >.config
#echo "CONFIG_TARGET_x86_64=y" >>.config
#echo "CONFIG_PACKAGE_luci-app-oaf=y" >>.config  
#make package/OpenAppFilter/luci-app-oaf/compile V=s  
#定义时间变量
#echo "FILE_DATE=$(date +%Y%m%d%H%M)" >>"$GITHUB_ENV"
