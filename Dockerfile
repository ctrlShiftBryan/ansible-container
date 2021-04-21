# syntax=docker/dockerfile:1.0.0-experimental
FROM python:3.7.6-stretch

RUN apt-get update && \
  apt-get install -y --no-install-recommends \
  apt-transport-https \
  ca-certificates \
  curl \
  software-properties-common \
  net-tools \
  libgit2-dev \
  pass \
  gnupg2 \
  sshpass && \
  curl -fsSL https://download.docker.com/linux/debian/gpg | \
  apt-key add - && \
  add-apt-repository \
  "deb [arch=amd64] https://download.docker.com/linux/debian \
  $(lsb_release -cs) \
  stable" && \
  apt-get update && \
  apt-get install -y --no-install-recommends docker-ce && \
  rm -rf /var/lib/apt/lists/*

RUN pip install pip --upgrade
RUN pip install ansible
RUN pip install docker boto3 botocore

WORKDIR /work
