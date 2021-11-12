#!/bin/bash

export BASEDIR="$(dirname $0)"
export COOKIE="$(cat "${BASEDIR}/cookie.txt")"
export TOKEN="$(cat "${BASEDIR}/token.txt")"
export FID="$(grep -Po "(?<=^${1},).*" "${BASEDIR}/idlist.txt")"

curl -s "https://mp.weixin.qq.com/cgi-bin/appmsg?action=list_ex&fakeid=${FID}&query=&begin=0&count=4&type=9&need_author_name=1&token=${TOKEN}&lang=zh_CN&f=json&ajax=1" \
  -H 'authority: mp.weixin.qq.com' \
  -H 'pragma: no-cache' \
  -H 'cache-control: no-cache' \
  -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36' \
  -H 'x-requested-with: XMLHttpRequest' \
  -H 'accept: */*' \
  -H 'sec-fetch-site: same-origin' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-dest: empty' \
  -H 'referer: https://mp.weixin.qq.com/cgi-bin/appmsg' \
  -H 'accept-language: zh-CN,zh;q=0.9' \
  -H "cookie: ${COOKIE}" \
  -H 'dnt: 1' \
  -H 'sec-gpc: 1' \
  --compressed
