#!/bin/bash

docker build ../ -t florianmarc:0.1
docker images
docker run -p 8000:8000 florianmarc:0.1 &
