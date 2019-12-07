#!/bin/bash

set -o errexit
set -o pipefail

WORK_DIRECTORY="/home/ec2-user/mlbapi"

cd $WORK_DIRECTORY
source env/bin/activate
sudo systemctl enable nginx
setfacl -m u:ec2-user:rwx /run
uwsgi --ini /home/ec2-user/mlbapi/scripts/uwsgi.ini
setfacl -m u:nginx:rw /run/uwsgi.sock
sudo systemctl restart nginx
