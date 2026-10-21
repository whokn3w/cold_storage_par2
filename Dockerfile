FROM debian:bookworm-slim

RUN apt-get update \
    && apt-get install -y --no-install-recommends par2 ca-certificates \
    && rm -rf /var/lib/apt/lists/*

CMD ["sleep", "infinity"]
