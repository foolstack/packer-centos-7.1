VBOX_VERSION=$(cat /home/vagrant/.vbox_version)

yum update -y
yum install -y gcc bzip2 kernel-devel kernel-headers perl make
yum groupinstall -y 'Development Tools'

cd /tmp
mount -o loop /home/vagrant/VBoxGuestAdditions_$VBOX_VERSION.iso /mnt
sh /mnt/VBoxLinuxAdditions.run
umount /mnt
rm -rf /home/vagrant/VBoxGuestAdditions_*.iso

