# neovim-themis

A docker image for running [vim-themis][] on [Neovim][].

## Usage

```
# Run vim-themis
docker run --rm --volume $PWD:/mnt/volume -it lambdalisue/neovim-themis

# Run Neovim
docker run --rm --entrypoint= -it lambdalisue/neovim-themis /usr/local/bin/nvim
```

[vim-themis]: https://github.com/thinca/vim-themis
[Neovim]: https://github.com/neovim/neovim
