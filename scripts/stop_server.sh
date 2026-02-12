#!/bin/bash
isExistApp="$(pgrep httpd)"
if [[ -n $isExistApp ]]; then
sudo systemctl stop httpd.service
fi
isExistApp="$(pgrep java)"
if [[ -n $isExistApp ]]; then
sudo systemctl stop tomcat10.service
fi