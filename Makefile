
build:
	packer build centos/packer.json

init:
	vagrant box add centos6.5 centos6.5-x86_64.box
	vagrant init centos6.5

clean:
	vagrant destroy
	rm Vagrantfile
	vagrant box remove centos6.5
