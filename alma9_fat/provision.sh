#!/bin/sh -ex

dnf install -y epel-release dnf-plugins-core
dnf config-manager --set-enabled crb

dnf update -y
dnf groups install -y 'Development Tools'
dnf install -y vim git
