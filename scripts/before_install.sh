#!/bin/bash

set -o errexit
set -o pipefail

# Ensure dependencies are installed;

sudo yum install git gcc python3-devel python3-pip
sudo amazon-linux-extras install nginx1.12
