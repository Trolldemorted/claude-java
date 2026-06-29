FROM ubuntu

WORKDIR /edualc
ENV PATH="$PATH:/root/.local/bin"
ENV IS_SANDBOX=1

RUN apt-get update && apt-get install -y curl openjdk-21-jdk zip unzip wget python3 git python3-setuptools python3-pip maven jq build-essential netcat-openbsd checkstyle
#TODO rustup

# Install Claude
RUN curl -fsSL https://claude.ai/install.sh | bash

ENTRYPOINT sleep 999999999
