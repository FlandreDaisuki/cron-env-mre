# cron environment variables minimal reproducible examples

```shell
$ cd cron-env-mre
$ docker-compose build && docker-compose up -d
```

## Solved

[Explanation: How cron omit environment variables](https://tonytonyjan.net/2018/07/08/how-cron-omit-environment-variables/)

Use `busybox` instead

## Question

* ~~What is the best way to get environment variables in cron/crontab?~~
* ~~If I replace `mv env.cron /etc/cron.d/env.cron` with `env | cat - env.cron > /etc/cron.d/env.cron`, we can get env variables. However the secrets left in file by this method, is this ok?~~

**If no best practice for this, please recommend some other lightweight scheduling solution in container, BIG THANKS!!**

## Outputs

```shell
$ docker exec -it bionic-mre env
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
HOSTNAME=de14f9dd8eca
TERM=xterm
TZ=Asia/Taipei
LANG=zh_TW.UTF-8
SECRET=Th1s_1s_a_s3cr3t_k3y
HOME=/root

$ docker exec -it bionic-mre cat cron.env.output
HOME=/root
LOGNAME=root
PATH=/usr/bin:/bin
SHELL=/bin/sh
PWD=/root

$ docker exec -it bionic-mre cat bash.cron.env.output
PWD=/root
HOME=/root
SHELL=/bin/sh
SHLVL=1
LOGNAME=root
PATH=/usr/bin:/bin
_=/usr/bin/env

$ docker exec -it bionic-mre cat node.env.output
HOME /root
LOGNAME root
PATH /usr/bin:/bin
SHELL /bin/sh
PWD /root
```
