# Configs

This repo includes my dotfiles.

# Setup

While the repo strives for clone-and-use, there are a few steps one should take before it is usable.

1. install Alacritty
2. make sure tmux is installed
3. install nvim
4. install TPM (tmux-package-manager). `tmux.conf` supposes it finds the `tpm` executable at `~/.tmux/plugins/tpm/tpm`
5. run TPM installer by pressing `prefix + I` while inside TMUX
6. install lazy.nvim ([guide](https://lazy.folke.io/installation))
7. run lazy installer by using the `:Lazy` command inside nvim

## Create symlinks

files that live in `~/` need to be symlinked. This includes
`.zshrc` and `git` files. Run the following:

```shell
ln -s ~/.config/zsh/zshrc-profile .zshrc
ln -s ~/.config/git/.gitignore_global .gitignore_global
ln -s ~/.config/git/.gitmessage .gitmessage
ln -s ~/.config/git/.gitconfig .gitconfig
ln -s ~/.config/fzf/.fzf.zsh .fzf.zsh
ln -s ~/.config/p10k/p10k.zsh .p10k.zsh
```
