#!/bin/bash

set -euo pipefail

ROOT=$(git rev-parse --show-toplevel)
TODAY=$(date '+%Y-%m-%d')

create_dir () {
  mkdir -p "${ROOT}/data/osm/${TODAY}"
}

cleanup() {
  echo "Clean up temporary data ... "
  #rm -rf ./$"TMP"
  rm test.osm.pbf
}
#trap cleanup EXIT
create_dir
#curl -o test.osm.pbf https://download.geofabrik.de/europe/germany/sachsen.html

