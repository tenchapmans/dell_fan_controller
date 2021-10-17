#/bin/bash -x

# install fan controller script and service on dell R710 servers

dir="/usr/local/dell_fan_controller"
repo="https://github.com/tenchapmans/dell_fan_controller.git"

# echo "Checking if script dir exists locally and create it if needed"
# [ ! -d "$dir" ] && mkdir -p "$dir"

echo "clone scripts from github"
git clone "$repo" "$dir"

echo "enable and start service"
systemctl enable "$dir"/fan_controller.service

systemctl start fan_controller

systemctl status fan_controller