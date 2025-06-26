#!/bin/bash

aws ecr get-login-password --region ap-northeast-1 | docker login --username AWS --password-stdin 360121241118.dkr.ecr.ap-northeast-1.amazonaws.com
if [ `docker images | grep 360121241118.dkr.ecr.ap-northeast-1.amazonaws.com/cjc101-24-ecr-repo | wc -l`  = 1 ]
then
        docker rmi 360121241118.dkr.ecr.ap-northeast-1.amazonaws.com/cjc101-24-ecr-repo:latest
        docker pull 360121241118.dkr.ecr.ap-northeast-1.amazonaws.com/cjc101-24-ecr-repo:latest
else
        docker pull 360121241118.dkr.ecr.ap-northeast-1.amazonaws.com/cjc101-24-ecr-repo:latest
fi
