#! /bin/bash  -xue

echo  Provisioning $HOSTNAME

sudo  timedatectl  set-timezone Asia/Tokyo

sudo  yum  update -y
sudo  yum  groupinstall -y  "Base"  "Development Tools"

sudo  rpm  -Uvh  https://packages.microsoft.com/config/centos/7/packages-microsoft-prod.rpm
sudo  yum  install -y  dotnet-sdk-3.1
