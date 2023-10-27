#!/bin/bash

echo "Buildando a Imagem"

docker build -t marcotfm/front:1.0 /var/kubernets_conection/frontend/
docker build -t marcotfm/back:1.2 /var/kubernets_conection/backend/

echo "Enviando imagem para o docker hub"

docker push marcotfm/front:1.0
docker push marcotfm/back:1.2


#Kubectl

kubectl apply -f /var/kubernets_conection/manifest/back/deploy.yaml

kubectl apply -f /var/kubernets_conection/manifest/front/deploy.yaml
