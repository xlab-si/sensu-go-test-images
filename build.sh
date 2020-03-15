#!/bin/bash

set -euo pipefail

readonly filename=$1; shift

readonly name=${filename%-*}
readonly version=${filename##*-}

readonly tag="xlabsi/$name:$version"

docker build --pull -f $filename -t $tag .
docker push $tag
