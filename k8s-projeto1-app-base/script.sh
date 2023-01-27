#!/bin/bash

echo "Criando as imagens........."

docker build -t rafaeltadeu01/projeto-backend:1.0 backend/.
docker build -t rafaeltadeu01/projeto-database:1.0 database/.

echo "Realizando o push das imagens........."

docker push rafaeltadeu01/projeto-backend:1.0 
docker push rafaeltadeu01/projeto-database:1.0

echo "Criando servico no Cluster Kubernetes........."

kubctl apply -f ./services.yml

echo "Criando os deploymets........."

kubctl apply -f ./deployment.yml

