#!/bin/bash

set -euo pipefail

TODAY=$(date '+%Y-%m-%d')
DATA_DIR="${DATA_DIR:-/data}"
OUT_DIR="${DATA_DIR}/osm/raw"

mkdir -p "${OUT_DIR}"

curl -fL -o "${OUT_DIR}/sachsen-latest_${TODAY}.osm.pbf" https://download.geofabrik.de/europe/germany/sachsen-latest.osm.pbf

