#!/bin/bash
sudo yum update -y
sudo yum install -y docker
sudo systemctl enable docker 
sudo systemctl docker docker
sudo usermod -aG docker ec2-user