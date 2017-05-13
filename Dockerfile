FROM python:alpine
MAINTAINER Christopher Su <hello@christopher.su>

ENV HC_UID="1000" HC_GID="1000"

RUN groupadd -g "$HC_GID" healthchecks && \
    useradd -u "$HC_UID" -g "$HC_GID" -m -d /home/healthchecks -s /bin/bash healthchecks

RUN apk update && \
    apk add --no-cache bash && \
    apk add --no-cache git
