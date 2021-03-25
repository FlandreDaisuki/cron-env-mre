#!/bin/bash

cd /root || exit

# env | cat - env.cron > /etc/cron.d/env.cron
mv env.cron /etc/cron.d/env.cron

chmod 0644 /etc/cron.d/env.cron
crontab /etc/cron.d/env.cron

touch /root/cron.log
