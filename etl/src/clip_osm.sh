#!/bin/bash

set -euo pipefail

RAW_DATA="${DATA_DIR}/osm/raw/sachsen-latest.osm.pbf"
OUT_DIR="${DATA_DIR}/osm/clipped"
MASK="/etl/reference/leipzig.geojson"

mkdir -p "${OUT_DIR}"

osmium extract -O --polygon="${MASK}" "${RAW_DATA}" --output="${OUT_DIR}/leipzig.osm.pbf"