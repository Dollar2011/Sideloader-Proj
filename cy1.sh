#!/bin/sh

rm -rf /tmp/cy1
mkdir /tmp/cy1

echo 'Downloading Debs'
wget -q -O /tmp/cydia-lproj_1.1.12_iphoneos-arm.deb http://apt.saurik.com/debs/cydia-lproj_1.1.12_iphoneos-arm.deb

wget -q -O /tmp/debianutils_3.3.3ubuntu1-1p_iphoneos-arm.deb http://apt.saurik.com/debs/debianutils_3.3.3ubuntu1-1p_iphoneos-arm.deb

wget -q -O /tmp/org.thebigboss.repo.icons_1.0.deb http://apt.saurik.com/debs/org.thebigboss.repo.icons_1.0.deb

wget -q -O /tmp/uikittools_1.1.12_iphoneos-arm.deb http://apt.saurik.com/debs/uikittools_1.1.12_iphoneos-arm.deb

wget -q -O /tmp/cydia_1.1.27_iphoneos-arm.deb http://apt.saurik.com/debs/cydia_1.1.27_iphoneos-arm.deb

echo 'Unpackaging Debs'
dpkg -i /tmp/debianutils_3.3.3ubuntu1-1p_iphoneos-arm.deb
dpkg -i /tmp/cydia-lproj_1.1.12_iphoneos-arm.deb
dpkg -i /tmp/org.thebigboss.repo.icons_1.0.deb
dpkg -i /tmp/uikittools_1.1.12_iphoneos-arm.deb
dpkg -i /tmp/cydia_1.1.27_iphoneos-arm.deb
dpkg --configure -a

rm -rf /tmp/cy1

cd /tmp
echo 'Erasing Cache'
su -c uicache mobile



echo 'Dollar @_8080_:'
echo ''
echo ''

killall SpringBoard
