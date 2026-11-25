# Thin wrapper around the upstream dashcast image: reads the app's options and starts dashcast.
FROM ghcr.io/huskerminion/techo5-dashcast:latest
USER root
RUN apt-get update \
 && apt-get install -y --no-install-recommends jq \
 && rm -rf /var/lib/apt/lists/*
COPY run.sh /run.sh
RUN chmod 0755 /run.sh
ENTRYPOINT ["/run.sh"]
