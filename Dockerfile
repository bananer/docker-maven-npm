ARG MAVEN_VERSION

FROM maven:${MAVEN_VERSION}

ARG NODE_VERSION

RUN apt-get update \
 && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 lsb-release --no-install-recommends \
 && curl -sSL https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add - \
 && echo "deb https://deb.nodesource.com/node_${NODE_VERSION} $(lsb_release -s -c) main" | tee /etc/apt/sources.list.d/nodesource.list \
 && apt-get update \
 && apt-get install -y nodejs \
 && rm -rf /var/lib/apt/lists/*