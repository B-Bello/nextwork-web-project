#!/bin/bash
sudo systemctl start tomcat10.service
sudo systemctl enable tomcat10.service
sudo systemctl start httpd.service
sudo systemctl enable httpd.service