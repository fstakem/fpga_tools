#!/usr/bin/env bash
sudo docker run -it --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -p 3389:3389 plex1/spinaldev:latest