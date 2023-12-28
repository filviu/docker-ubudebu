FROM ubuntu:latest

LABEL maintainer="Silviu Vulcan"
LABEL org.opencontainers.image.source=https://github.com/filviu/docker-ubudebu
LABEL org.opencontainers.image.description="Ubuntu based docker image for troubleshooting docker, compose, k3s, k8s, openshift deployments."

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC

RUN apt-get update && apt-get -y install tzdata

RUN apt-get install -y                           \
# APIs                                                             \
    curl httpie wget jq                                            \
# networking                                                       \
    dnsutils iputils-ping net-tools netcat nmap telnet traceroute  \
# DB                                                               \
    mysql-client postgresql-client sqlite3-tools                   \
# Misc tools                                                       \
    git gdu mc openssl rsync unzip                                 \
    && rm -rf /var/lib/apt/lists/*

# run forever
CMD ["tail", "-f", "/dev/null"]
