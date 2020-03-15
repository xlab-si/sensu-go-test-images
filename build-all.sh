#!/bin/bash

set -euo pipefail

for f in ubuntu-* centos-* redhat-* debian-* sensu-*
do
  ./build.sh $f
done
