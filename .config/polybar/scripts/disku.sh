#!/bin/sh

df -h / | tail -1 | awk 'OFS="/" {print $4, $5}'

