#!/bin/bash

sudo yum install -y yum-utils

sudo yum install -y git

sudo yum install -y wget

sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

sudo yum install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

sudo systemctl start docker


