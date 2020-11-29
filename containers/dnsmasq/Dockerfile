FROM debian:buster-slim
RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get -y --no-install-recommends install \
    dnsmasq \
    && rm -rf /var/lib/apt/lists/*
CMD [ "/usr/sbin/dnsmasq", "--no-daemon" ]
