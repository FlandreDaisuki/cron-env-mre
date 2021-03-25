#!/bin/bash

cd /root || exit

crontab env.cron

crontab -l

crond -l 2 -f
