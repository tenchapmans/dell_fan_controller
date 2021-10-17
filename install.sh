#/bin/bash

# install fan controller script and service on dell R710 servers

localfolder="/usr/local/dell_fan_controller"
repository="https://github.com/tenchapmans/dell_fan_controller.git"

mkdir $localfolder

git clone $repository" "$localFolder

systemctl enable /usr/local/dell_fan_controller/fan_controller.service

systemctl start fan_controller.service



# curl https://raw.githubusercontent.com/tenchapmans/dell_fan_controller/main/r710_fan_controller.sh --output /usr/local/dell_fan_controller/fan_controller.sh

# curl https://github.com/tenchapmans/dell_fan_controller/blob/main/fan_controller.service --ouput /usr/local/dell_fan_controller/fan_controller.service
