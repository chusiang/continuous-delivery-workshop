#!/bin/bash

for X in $(cat list.txt); do
  docker rm -f $X
done
