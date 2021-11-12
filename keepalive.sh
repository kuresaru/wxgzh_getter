#!/bin/bash

export BASEDIR="$(dirname $0)"
export COOKIE="$(cat "${BASEDIR}/cookie.txt")"

/usr/bin/curl 'https://mp.weixin.qq.com/mp/jsmonitor' \
  -H 'authority: mp.weixin.qq.com' \
  -H 'pragma: no-cache' \
  -H 'cache-control: no-cache' \
  -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36' \
  -H 'accept: image/avif,image/webp,image/apng,image/*,*/*;q=0.8' \
  -H 'sec-fetch-site: same-origin' \
  -H 'sec-fetch-mode: no-cors' \
  -H 'sec-fetch-dest: image' \
  -H 'referer: https://mp.weixin.qq.com/cgi-bin/appmsg' \
  -H 'accept-language: zh-CN,zh;q=0.9' \
  -H "cookie: ${COOKIE}" \
  -H 'dnt: 1' \
  -H 'sec-gpc: 1' \
  --compressed \
  &> /dev/null
