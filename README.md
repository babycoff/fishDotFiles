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
- `openssh-server`: for SSH serving or connecting
    - use `sudo systemctl start ssh`(enable) to start serving, edit `/etc/ssh/sshd_config` for port changing.
- `htop`
- `nload`: for network rate monitoring, use `sudo nload -m`.
- `tmux`
    - make soft link for config: `ln -s ~/fishDotFiles/.tmux.conf ~/.tmux.conf`.
- `ranger`:
    - make soft link for config: `ln -s ~/fishDotFiles/ranger/ ~/.config/ranger`.
    - use `ranger --copy-config=all` to get default config files.
- `fzf` for file searching.
- `lazygit`(snap `lazygit-gm`): for operation of git.
- `neovim`(snap)
    - make soft link for main config: `ln -s ~/fishDotFiles/nvim ~/.config/nvim`.
