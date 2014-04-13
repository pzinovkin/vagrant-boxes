#!/bin/sh

mkdir /tmp/vbox
mount -t iso9660 -o loop /home/vagrant/VBoxGuestAdditions.iso /tmp/vbox
/tmp/vbox/VBoxLinuxAdditions.run
umount /tmp/vbox
chkconfig vboxadd-x11 off
