#!/bin/sh /etc/rc.common
# /init.d/wifiopen
START=99

start() {
undefined
ifconfig rai0 up
ifconfig ra0 up
brctl addif br-lan rai0
brctl addif br-lan ra0
}

stop() {
    undefined
    #在路由器停止时自动运行的命令
    # 2023年2月19日测试失败
}