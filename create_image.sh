#!/bin/bash

#AUTHENTICARSE CON AWSCLI
aws configure import --csv file://config.csv
aws configure set region us-east-1 --profile default

#AUTENTIFICARSE CON AWS ECR
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 769658871215.dkr.ecr.us-east-1.amazonaws.com

#CREAR IMAGEN AWS ECR BACKEND
docker build -t golangapp ./golangapp

#TAGGEANDO LA APP BACKEND
docker tag golangapp:latest 769658871215.dkr.ecr.us-east-1.amazonaws.com/golangapp:latest

#PUSH DE LA IMAGEN BACKEND
docker push 769658871215.dkr.ecr.us-east-1.amazonaws.com/golangapp:latest

#CREAR IMAGEN AWS ECR FRONTEND
docker build -t reactapp ./reactapp

#TAGGEANDO LA APP FRONTEND
docker tag reactapp:latest 769658871215.dkr.ecr.us-east-1.amazonaws.com/reactapp:latest

#PUSH DE LA IMAGEN BACKEND
docker push 769658871215.dkr.ecr.us-east-1.amazonaws.com/reactapp:latest