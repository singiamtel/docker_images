#!/bin/sh -ex

dnf install -y epel-release dnf-plugins-core
dnf config-manager --set-enabled crb

dnf update -y
dnf groups install -y 'Development Tools'
dnf install -y git neovim python3-neovim

# START Docker
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
dnf install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y
# END Docker

{ echo "alias vi='nvim'";
  echo "alias vim='nvim'";
  echo "alias e='nvim'";
} >> /root/.bashrc


cat git_alias.sh >> /root/.bashrc # ZSH aliases
