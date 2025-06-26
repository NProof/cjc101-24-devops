#!/bin/bash
docker run -p 80:5000 --name flask-web -d 360121241118.dkr.ecr.ap-northeast-1.amazonaws.com/cjc101-24-ecr-repo:latest

sleep 20s
