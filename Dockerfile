FROM tomcat:8.5.27-jre8
MAINTAINER Vincent Gu <v@bitmart.com>

ENV DEP fontconfig ttf-dejavu
RUN set -ex \
    && apt-get update && apt-get install -y --no-install-recommends $DEP \
    && rm -rf /var/lib/apt/lists/*
