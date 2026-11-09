FROM ubuntu:24.04

RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    ca-certificates \
    osm2pgsql \
    osmium-tool \
    && rm -rf /var/lib/apt/lists/*


COPY . ./etl

ENTRYPOINT ["bash", "etl/src/clip_osm.sh"]