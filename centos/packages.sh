#!/bin/sh

set -e

rpm --import http://download.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-6
rpm -ivh http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
yum install -y docker-io nodejs npm
