FROM ubuntu:latest
LABEL maintainer="Silviu Vulcan"
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
