#!/bin/bash

. /root/env.sh

PROCESS="forker.R";

if ! ps ax | grep -v grep | grep $PROCESS > /dev/null; then
  echo "`date`: forker process not running";
  /usr/bin/php /app/concerto/bin/console concerto:forker:start --env=prod;
fi