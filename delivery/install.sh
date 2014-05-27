#!/bin/sh

machine=`uname -m`
if [ "${machine}" != "armv7l" ]; then
  echo "This script will be executed at mounted raspbian enviroment (armv7l). Current environment is ${machine}."
  exit 1
fi

echo "Please check environment variables etc, this script can be executed ONLY within RPI environment!"
echo "When tasks done, type \"exit\" to return"
echo ""

apt-get install git
cd /tmp
git clone https://github.com/YunoHost/install_script.git
cd install_script/
chmod +x autoinstall_yunohostv2
./autoinstall_yunohostv2
