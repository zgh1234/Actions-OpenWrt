#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate
sed -i 's/LEDE/LoveMeOs/g' package/base-files/files/bin/config_generate
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/luci2/bin/config_generate
sed -i 's/LEDE/LoveMeOs/g' package/base-files/luci2/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
sed -i 's/OpenWrt/LoveMeOs/g' package/base-files/files/bin/config_generate
sed -i '750a\<tr><td width="33%"><%:编译作者%></td><td style="color: rgb(135,206,235);font-weight: 1000;">魔法少女莉露露</td></tr>' package/lean/autocore/files/x86/index.htm
sed -i '751a\<tr><td width="33%"><%:源码%></td><td style="color: red;font-weight: 1000;">基于Lean大佬源码编译</td></tr>' package/lean/autocore/files/x86/index.htm
sed -i '750a\<tr><td width="33%"><%:编译作者%></td><td style="color: rgb(135,206,235);font-weight: 1000;">魔法少女莉露露</td></tr>' package/lean/autocore/files/arm/index.htm
sed -i '751a\<tr><td width="33%"><%:源码%></td><td style="color: red;font-weight: 1000;">基于Lean大佬源码编译</td></tr>' package/lean/autocore/files/arm/index.htm

