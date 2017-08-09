FROM quay.io/vektorcloud/docker:latest

ENV LANG=C.UTF-8 \
  AWSCLI_VERSION=1.11.130

RUN apk add --no-cache bash \
  bzip2 \
  ca-certificates \
  git \
  gzip \
  jq \
  make \
  mercurial \
  net-tools \
  openssh-client \
  parallel \
  python \
  python-dev \
  sudo \
  tar \
  unzip \
  zip 

RUN wget "https://bootstrap.pypa.io/get-pip.py" -O /dev/stdout | python \
  && pip install awscli==$AWSCLI_VERSION

CMD ["/bin/sh"]
