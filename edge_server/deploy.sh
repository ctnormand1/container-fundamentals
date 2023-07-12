#! /usr/bin/env bash

docker run -d --restart unless-stopped -p 8000:80 edge_server:v1
