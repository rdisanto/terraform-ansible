FROM debian:sid
MAINTAINER rdisanto
ENV TERRAFORM_VERSION=0.11.7
RUN apt-get update \
    && apt-get install -y wget ansible zip git openssh-client python-cryptography python-openssl procps python-boto sudo make \
    && mkdir /terraform \
    && cd /terraform \
    && wget -q https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip \
    && unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /bin/ \
    && rm terraform_${TERRAFORM_VERSION}_linux_amd64.zip
