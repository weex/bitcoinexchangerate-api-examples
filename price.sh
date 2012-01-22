#!/usr/bin/env bash


curl 'http://www.bitcoinexchangerate.org/price' 2> /dev/null | sed -n '/<title>/,/<\/title>/ {
s/^.*<title>//
s/<\/title>.*$//
p
}'

#curl 'http://www.bitcoinexchangerate.org/price' | sed -n '/<title>/,/<\/title>/ {
#            s/^.*<title>//
#            s/<\/title>.*$//
#            p
#            }'
