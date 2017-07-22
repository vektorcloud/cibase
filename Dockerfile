FROM quay.io/vektorcloud/docker:latest

ENV LANG=C.UTF-8

RUN apk add --no-cache bash git mercurial sudo ca-certificates tar gzip \
                       parallel net-tools unzip zip bzip2 jq

CMD ["/bin/sh"]
