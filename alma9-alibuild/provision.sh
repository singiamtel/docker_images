#!/bin/sh -ex

dnf install -y epel-release dnf-plugins-core
dnf config-manager --set-enabled crb

dnf update -y
dnf groups install -y 'Development Tools'
dnf install -y vim git python3 python3-pip python3-devel python3-virtualenv
