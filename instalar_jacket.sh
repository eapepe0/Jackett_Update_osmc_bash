#!/bin/bash

version_jackett="v0.16.2256"

FILE=/home/osmc/Jackett.Binaries.LinuxARM32.tar.gz
if [ -f "$FILE" ];then
        echo "$FILE existe"
else
        wget  "https://github.com/Jackett/Jackett/releases/download/${version_jackett}/Jackett.Binaries.LinuxARM32.tar.gz"
fi
tar -xzf Jackett.Binaries.LinuxARM32.tar.gz

sudo chown osmc:osmc -R "/home/osmc/Jackett"
cd Jackett

sudo ./install_service_systemd.sh
