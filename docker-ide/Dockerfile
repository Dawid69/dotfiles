FROM alpine:edge

WORKDIR /root

RUN apk add zsh git lua lazygit bottom rustup neovim ripgrep alpine-sdk --update

RUN git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim

RUN nvim --headless -c "autocmd User PackerComplete quitall"

CMD nvim
