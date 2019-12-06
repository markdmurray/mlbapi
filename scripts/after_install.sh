#!/bin/bash

set -o errexit
set -o pipefail

WORK_DIRECTORY="/home/ec2-user/mlbapi"

sudo chown -R ec2-user /home/ec2-user/mlbapi
cd $WORK_DIRECTORY
virtualenv -p python3 env
source env/bin/activate
pip3 install uwsgi
pip3 install -r requirements.txt
