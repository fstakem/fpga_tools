#!/usr/bin/env bash
sudo docker run -it -h ice --name ice_app --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix ice:latest