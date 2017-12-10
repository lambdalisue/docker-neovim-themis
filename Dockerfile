ARG TAG=${TAG:-latest}
FROM lambdalisue/neovim-ci:${TAG}
MAINTAINER lambdalisue <lambdalisue@hashnote.net>

RUN apk add --no-cache --virtual build-deps git \
 && git clone --depth 1 --single-branch https://github.com/thinca/vim-themis /opt/github.com/thinca/vim-themis \
 && apk del build-deps

ENV THEMIS_HOME=/opt/github.com/thinca/vim-themis \
    THEMIS_VIM=/usr/local/bin/nvim \
    THEMIS_ARGS="-e -s --headless"

ENTRYPOINT ["/opt/github.com/thinca/vim-themis/bin/themis"]
CMD []
