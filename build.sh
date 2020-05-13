#! /bin/bash

helm package .
helm repo index . --url https://github.com/cenotelie/eCollab-helm
sed -i 's/github/raw.githubusercontent/; s/eCollab-helm/eCollab-helm\/master/' index.yaml
