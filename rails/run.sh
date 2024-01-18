#!/bin/bash

rm -rf rails_app/

docker build -t rails-docker -f Dockerfile.rails .

docker run -it -v $PWD:/opt/app --env-file .env rails-docker

docker compose up --build
