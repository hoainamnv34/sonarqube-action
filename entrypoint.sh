#!/bin/sh -l

docker run \
  --rm \
  -e SONAR_HOST_URL="$1" \
  -e SONAR_SCANNER_OPTS="$2" \
  -e SONAR_TOKEN="$3" \
  -v "$4:/usr/src" \
  sonarsource/sonar-scanner-cli
