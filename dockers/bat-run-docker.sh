#!/bin/bash
# ============================================================
#  Author: Chu-Siang Lai / chusiang (at) drx.tw
#  Blog: http://note.drx.tw
#  Filename: bat-run-docker.sh
#  Modified: 2017-08-05 04:47
#  Description: Batch run multiple docker containers.
# ============================================================

for X in {1..10}; do
  docker run -P -d chusiang/ansible-jupyter:ubuntu-16.04
done

