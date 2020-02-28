FROM maven:3-jdk-11-slim

ARG node_version=12.x

RUN apt-get update \
 && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 lsb-release --no-install-recommends \
 && curl -sSL https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add - \
 && echo "deb https://deb.nodesource.com/node_$node_version $(lsb_release -s -c) main" | tee /etc/apt/sources.list.d/nodesource.list \
 && apt-get update \
 && apt-get install -y nodejs