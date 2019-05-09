#!/bin/sh
ip route del 65.23.209.48/29 via 10.1.1.2 dev enp0s8
ip route del 20.143.128.0/20 via 0.0.0.0 dev enp0s8
ip route del 11.75.202.16/28 via 0.0.0.0 dev enp0s8
ip route del 111.195.59.26/31 via 0.0.0.0 dev enp0s8
ip route del 40.167.130.128/25 via 10.1.1.2 dev enp0s8
ip route del 37.186.203.0/25 via 0.0.0.0 dev enp0s8
