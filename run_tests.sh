#!/bin/bash

returncode=1

ps ax | grep apache
ps ax | grep httpd

#if telnet localhost 80; then returncode=0; fi
if wget http://localhost/index.html; then returncode=0; fi

echo $returncode