#!/bin/bash

set -o errexit
set -o pipefail

source ../env/bin/activate

sudo systemctl enable nginx
uwsgi --init /home/ec2-user/scripts/uwsgi.ini
sudo systemctl restart nginx
