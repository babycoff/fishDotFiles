# fishDotFiles

To save my own config files. Work in Ubuntu22 well~ Clone it to:

```
cd ~ && \
git clone https://github.com/lfishRhungry/fishDotFiles.git
```

Make some soft links to these files when sitting in a new room.

## Usage tools (Some dependencies)

- `git`
- `build-essentials`
- `golang`(snap for latest)
- `miniconda`: virtual env for python, [see this](https://docs.conda.io/projects/miniconda/en/latest/miniconda-install.html).
- `openssh-server`: for SSH serving or connecting, use `sudo systemctl start ssh`(enable) to start serving, edit `/etc/ssh/sshd_config` for port changing.
- `tmux`
- `node`(snap): for vim plugin `coc.nvim`
- `vim`(at least vim82 for plugin management)
    - make soft link for main config: `ln -s ~/fishDotFiles/vimrc ~/.vimrc`.
    - make soft link to `$VIMRUNTIME` for plugin folder: `sudo ln -s ~/fishDotFiles/vim/plugins /usr/share/vim/vim82/pack/plugins`.
- `universal-ctags`(snap): better tag generation.
- `ranger`: use `ranger --copy-config=all` to get default config files.
- `fzf` for file searching.
- `lazygit`(snap `lazygit-gm`): for operation of git.
- `htop`
- `nload`: for network rate monitoring, use `sudo nload -m`.

## Tips

1. Ranger's config file need a hard link.
2. I make vimrc with no plugins for convenient.
