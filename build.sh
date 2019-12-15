#!/bin/bash

for i in ubuntu-*
do
  tag=${i/ubuntu-}
  docker build --pull -f $i -t xlabsi/ubuntu:$tag .
  docker push xlabsi/ubuntu:$tag
done
