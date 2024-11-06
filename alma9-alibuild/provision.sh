#!/bin/sh -ex

dnf update -y
dnf install -y python3 python3-pip python3-devel python3-virtualenv

pip install alibuild
touch ~/.config/alibuild/disable-analytics

# START https://alice-doc.github.io/alice-analysis-tutorial/building/prereq-alma9.html
cat << EOF > /etc/yum.repos.d/alice-system-deps.repo
[alice-system-deps]
name=alice-system-deps
baseurl=https://s3.cern.ch/swift/v1/alibuild-repo/RPMS/o2-full-deps_el9.x86-64/
enabled=1
gpgcheck=0
EOF
dnf update -y
dnf install -y alice-o2-full-deps # alibuild
# END https://alice-doc.github.io/alice-analysis-tutorial/building/prereq-alma9.html
