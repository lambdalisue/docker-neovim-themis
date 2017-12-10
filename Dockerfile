ARG TAG=${TAG:-latest}
FROM lambdalisue/neovim-ci:${TAG}
MAINTAINER lambdalisue <lambdalisue@hashnote.net>

ENV THEMIS_HOME=/opt/vim-themis \
    THEMIS_VIM=/usr/local/bin/nvim \
    THEMIS_ARGS="-e -s --headless"

RUN apk add --no-cache --virtual build-deps git \
 && git clone --depth 1 --single-branch https://github.com/thinca/vim-themis /opt/vim-themis \
 && git clone --depth 1 --single-branch https://github.com/vim-jp/vital.vim /opt/vital.vim \
 && apk del build-deps

ENTRYPOINT ["/opt/vim-themis/bin/themis"]
CMD ["--runtimepath", "/opt/vital.vim"]
