#!/bin/bash

set -o errexit
set -o pipefail

WORK_DIRECTORY="/home/ec2-user/mlbapi"

cd $WORK_DIRECTORY
source env/bin/activate
sudo systemctl enable nginx
uwsgi --ini /home/ec2-user/scripts/uwsgi.ini
sudo systemctl restart nginx
