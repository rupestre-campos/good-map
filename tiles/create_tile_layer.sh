#!/bin/bash

# Define variables

GPKG_FILE="../etl/data/national_parks_20250108T013315.gpkg"
FINAL_OUTPUT_FILE="./data/national_parks.geojsonseq"
PMTILES_FILE="./data/national_parks.pmtiles"
rm "${FINAL_OUTPUT_FILE}"
rm "${PMTILES_FILE}"

mkdir ./data/
# Run ogr2ogr command
ogr2ogr -f "GeoJSONSeq" \
    -quiet \
    "${FINAL_OUTPUT_FILE}" \
    "${GPKG_FILE}"

# Run tippecanoe command
tippecanoe -z14 -Z0 -ae -d12 -D10 -m9 \
    --detect-shared-borders \
    --force \
    --projection="EPSG:4326" \
    --read-parallel \
    --coalesce-densest-as-needed \
    --coalesce-smallest-as-needed \
    -o "${PMTILES_FILE}" \
    -l "national_parks" \
    "${FINAL_OUTPUT_FILE}"

echo "Process completed successfully"
