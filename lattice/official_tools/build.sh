#!/usr/bin/env bash

sudo docker build -t ice --rm . || sudo docker rmi -f $(sudo docker images --filter "dangling=true" -q --no-trunc)