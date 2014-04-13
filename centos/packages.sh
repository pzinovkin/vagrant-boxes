#!/bin/sh

set -e

# install epel and docker
rpm --import http://download.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-6
rpm -ivh http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
yum install -y docker-io

# expose docker api
echo 'other_args="-H unix:///var/run/docker.sock -H tcp://0.0.0.0:4243"' >> /etc/sysconfig/docker
service docker restart
usermod -a -G docker vagrant

