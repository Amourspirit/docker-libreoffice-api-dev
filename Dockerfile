FROM dockdock/libreoffice-api-full:LO-7.5

# Set Poetry version
ARG POETRY_VERSION=1.5.1

LABEL name="Libreoffice-API-DEV" \
    description="A LibreOffice server - LibreOffice API Access - Some Developer Tools" \
    maintainer="DockDock"

# Configure Poetry
ENV POETRY_VERSION="$POETRY_VERSION"

USER root
WORKDIR /root

COPY ./bashrc.txt .

RUN apt-get update -y \
    && apt-get install --no-install-recommends -y  \
    git \
    && curl -sSL https://bootstrap.pypa.io/get-pip.py | /usr/bin/python3 - \
    && pip install virtualenv \
    && python3 -m pip install poetry \
    && python3 -m pip install black \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean \
    && fc-cache -f

RUN cat bashrc.txt >> .bashrc \
    && rm bashrc.txt \
    && git config --global alias.co checkout \
    && git config --global alias.br branch \
    && git config --global alias.ci commit \
    && git config --global alias.s status -s \
    && git config --global alias.type cat-file -t \
    && git config --global alias.dump cat-file -p

USER dockdock
WORKDIR /home/dockdock

COPY ./bashrc.txt .

RUN cat bashrc.txt >> .bashrc \
    && rm bashrc.txt \
    && git config --global alias.co checkout \
    && git config --global alias.br branch \
    && git config --global alias.ci commit \
    && git config --global alias.s status -s \
    && git config --global alias.type cat-file -t \
    && git config --global alias.dump cat-file -p