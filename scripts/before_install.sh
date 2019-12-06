#!/bin/bash

set -o errexit
set -o pipefail

# Ensure dependencies are installed;

sudo yum install -y git gcc python3-devel python3-pip python-virtualenv
sudo amazon-linux-extras install -y nginx1.12
