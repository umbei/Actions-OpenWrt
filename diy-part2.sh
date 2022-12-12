#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
# sed -i 's/192.168.1.1/10.0.0.252/g' package/base-files/files/bin/config_generate

# cat >$NETIP <<-EOF
# uci set network.lan.ipaddr='10.0.0.252'                      # IPv4 地址(openwrt后台地址)
# uci set network.lan.netmask='255.255.255.0'                   # IPv4 子网掩码
# uci set network.lan.gateway='10.0.0.251'                    # 旁路由设置 IPv4 网关（去掉uci前面的#生效）
# uci set network.lan.broadcast='192.168.2.255'                # 旁路由设置 IPv4 广播（去掉uci前面的#生效）
# uci set network.lan.dns='223.5.5.5 8.8.4.4'          # 旁路由设置 DNS(多个DNS要用空格分开)（去掉uci前面的#生效）
# uci set network.lan.delegate='1'                              # 去掉LAN口使用内置的 IPv6 管理(若用IPV6请把'0'改'1')
# uci set dhcp.@dnsmasq[0].filter_aaaa='1'                      # 禁止解析 IPv6 DNS记录(若用IPV6请把'1'改'0')
# uci set dhcp.lan.ignore='1'                                  # 旁路由关闭DHCP功能（去掉uci前面的#生效）
# uci delete network.lan.type                                  # 旁路由去掉桥接模式（去掉uci前面的#生效）
# uci set system.@system[0].hostname='OpenWrt'              # 修改主机名称为OpenWrt-123
# uci set ttyd.@ttyd[0].command='/bin/login -f root'           # 设置ttyd免帐号登录（去掉uci前面的#生效）
# 如果有用IPV6的话,可以使用以下命令创建IPV6客户端(LAN口)（去掉全部代码uci前面#号生效）
# uci set network.ipv6=interface
# uci set network.ipv6.proto='dhcpv6'
# uci set network.ipv6.ifname='@lan'
# uci set network.ipv6.reqaddress='try'
# uci set network.ipv6.reqprefix='auto'
# uci set firewall.@zone[0].network='lan ipv6'
# EOF
