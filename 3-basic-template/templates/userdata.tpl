#!/bin/bash
yum install ${webserver} --assumeyes
service ${webserver} start