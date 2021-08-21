FROM alpine:3.14.1

ARG ANSIBLE_VERSION=2.9.0

LABEL org.opencontainers.image.authors="Josh Feierman"
LABEL org.opencontainers.image.ref.name="Ansible Autodoc for Ansible v${ANSIBLE_VERSION}"

RUN apk add --no-cache --update python3=3.9.5-r1 python3-dev=3.9.5-r1 py3-pip py3-cffi=1.14.5-r1 py3-cryptography=3.3.2-r1
RUN pip install --upgrade pip
RUN pip install ansible=="${ANSIBLE_VERSION}" ansible-autodoc==0.5.2