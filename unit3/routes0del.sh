#!/bin/sh

ip route del 121.181.192.0/19 via 0.0.0.0 dev enp0s8
ip route del 16.104.88.0/24 via 10.1.1.2 dev enp0s8
ip route del 126.210.104.0/21 via 10.1.1.2 dev enp0s8
ip route del 19.28.0.0/16 via 0.0.0.0 dev enp0s8
ip route del 71.210.128.0/18 via 0.0.0.0 dev enp0s8
ip route del 93.88.33.0/24 via 0.0.0.0 dev enp0s8
