#!/bin/bash

set -o errexit
set -o pipefail

sudo systemctl enable nginx
uwsgi --init /home/ec2-user/scripts/uwsgi.ini
sudo systemctl restart nginx
