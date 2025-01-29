FROM debian:bookworm-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y icecast2 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /etc/icecast2

COPY icecast.xml /etc/icecast2/icecast.xml

RUN chown -R icecast2:icecast2 /etc/icecast2

USER icecast2

EXPOSE 8000

CMD ["icecast2", "-c", "/etc/icecast2/icecast.xml"]
