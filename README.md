[![Build and Push Docker Image](https://github.com/filviu/docker-ubudebu/actions/workflows/docker_build.yml/badge.svg)](https://github.com/filviu/docker-ubudebu/actions/workflows/docker_build.yml)

# docker-ubudebu

A simple docker image for troubleshooting in docker, kubernetes, openshift environments.

You know there must be a better way but you still mess around with apt, apk, microdnf to shoehorn curl or telnet to test that API endpoint or network port. This is a better way:

You deploy `filviu/ubudebu:latest` in your compose or as a sidecar or whatever, `exec` inside it and have a number of useful tools available at your fingertips.

## Versio

The image is kept up-to-date by rebuilding on top of the upstream `ubuntu:latest` daily. I'm not messing with other tags besides `:latest` it is enough for my needs. If you need different Ubuntu versions PRs are welcome 😁

## Running

The container runs tail forever so it doesn't die if deployed in k8s or OpenShift. You can also run it as easy as 

`docker run --rm -it filviu/ubudebu:latest bash`

## Contents

### APIs, http, https

* curl
* [HTTPie](https://httpie.io/)
* wget
* [jq](https://jqlang.github.io/jq/)

### Networking

* dnsutils
* iputils-ping - i.e. ping
* net-tools
* netcat
* nmap
* telnet
* traceroute

### Database Tools

* mysql-client
* postgresql-client
* sqlite3-tools

### Misc

* git
* gdu (ncdu) - graphical disk space usage
* mc - Midnight Commander, because mc
* openssl
* rsync
* unzip

More tools can be addded, PRs or requests welcome.
